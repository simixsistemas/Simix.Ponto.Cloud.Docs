# Acesso com usuário (token)

**Integrações › Acesso com usuário** · Login que devolve um token para as chamadas seguintes, sem cookie

Para ler os colaboradores e o ponto calculado, use a [chave de API](API.md): ela não depende de senha e só abre as consultas de integração. Esta página é para quando a integração precisa **entrar como um usuário**, com as permissões dele: por exemplo, para chamar outra parte da API que a chave não cobre.

> **Atenção:** as rotas `/api/app/...` são as mesmas que as telas do sistema usam. Elas acompanham as telas e podem mudar numa atualização. Para integrações que precisam durar, prefira as [consultas de integração](Consultas.md); se faltar algo nelas, peça ao suporte.

## Como funciona

1. O sistema faz login **uma vez** com usuário e senha e recebe dois tokens:
   - **access_token**: vai no cabeçalho `Authorization: Bearer ...` de cada chamada. Vale 1 hora.
   - **refresh_token**: troca por um novo par de tokens quando o access_token vence, **sem a senha**. Cada troca devolve um refresh_token novo.
2. Enquanto a rotina renovar os tokens antes de o refresh_token vencer, a senha não é usada de novo. Guarde o refresh_token com o mesmo cuidado de uma senha.
3. Se a senha do usuário mudar ou o usuário for desativado, a renovação para de funcionar e é preciso um novo login.

Não há cookie: cada chamada leva o token no cabeçalho.

## Passo 1: login

```bash
curl -X POST "https://{tenant}.simixponto.app/connect/token" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=password" \
  --data-urlencode "client_id=Ponto_App" \
  --data-urlencode "username=USUARIO_DE_INTEGRACAO" \
  --data-urlencode "password=SENHA" \
  --data-urlencode "scope=Ponto offline_access"
```

Resposta:

```json
{
  "access_token": "eyJhbGciOiJSUzI1NiIs...",
  "token_type": "Bearer",
  "expires_in": 3599,
  "refresh_token": "eyJhbGciOiJSU0EtT0FFUCIs..."
}
```

- Use sempre o **endereço da sua empresa**: o login vale para a empresa do endereço.
- O escopo `offline_access` é o que faz vir o refresh_token.
- Usuário com autenticação em dois fatores não entra por aqui. Crie um usuário próprio para a integração.

## Passo 2: chamar a API com o token

```bash
curl "https://{tenant}.simixponto.app/api/app/ROTA" -H "Authorization: Bearer ACCESS_TOKEN"
```

Sem permissão para a rota, a resposta é **403** com o nome da permissão que falta.

## Passo 3: renovar o token

Quando a chamada responder **401** (ou um pouco antes de vencer o `expires_in`):

```bash
curl -X POST "https://{tenant}.simixponto.app/connect/token" \
  -H "Content-Type: application/x-www-form-urlencoded" \
  --data-urlencode "grant_type=refresh_token" \
  --data-urlencode "client_id=Ponto_App" \
  --data-urlencode "refresh_token=REFRESH_TOKEN"
```

A resposta tem o mesmo formato do login. Guarde o **refresh_token novo**: o anterior deixa de valer.

## Em código

**JavaScript (Node.js 18+)**

```javascript
const URL_BASE = "https://{tenant}.simixponto.app";
let tokens = await pedirToken({ grant_type: "password", username: process.env.SIMIX_USUARIO, password: process.env.SIMIX_SENHA, scope: "Ponto offline_access" });

async function pedirToken(campos) {
  const resposta = await fetch(`${URL_BASE}/connect/token`, {
    method: "POST",
    body: new URLSearchParams({ client_id: "Ponto_App", ...campos })
  });
  if (!resposta.ok) throw new Error(`Login recusado (${resposta.status}): ${await resposta.text()}`);
  return resposta.json();
}

async function chamar(caminho) {
  let resposta = await fetch(URL_BASE + caminho, { headers: { Authorization: `Bearer ${tokens.access_token}` } });
  if (resposta.status === 401) {
    tokens = await pedirToken({ grant_type: "refresh_token", refresh_token: tokens.refresh_token });
    resposta = await fetch(URL_BASE + caminho, { headers: { Authorization: `Bearer ${tokens.access_token}` } });
  }
  if (!resposta.ok) throw new Error(`${resposta.status} em ${caminho}`);
  return resposta.json();
}
```

**C# (.NET 6+)**

```csharp
using System.Net;
using System.Net.Http.Headers;
using System.Net.Http.Json;

var http = new HttpClient { BaseAddress = new Uri("https://{tenant}.simixponto.app") };
var tokens = await PedirTokenAsync(new() {
    ["grant_type"] = "password", ["username"] = Environment.GetEnvironmentVariable("SIMIX_USUARIO")!,
    ["password"] = Environment.GetEnvironmentVariable("SIMIX_SENHA")!, ["scope"] = "Ponto offline_access"
});

async Task<Tokens> PedirTokenAsync(Dictionary<string, string> campos) {
    campos["client_id"] = "Ponto_App";
    using var resposta = await http.PostAsync("/connect/token", new FormUrlEncodedContent(campos));
    resposta.EnsureSuccessStatusCode();
    return (await resposta.Content.ReadFromJsonAsync<Tokens>())!;
}

async Task<string> ChamarAsync(string caminho) {
    for (var tentativa = 0; ; tentativa++) {
        using var pedido = new HttpRequestMessage(HttpMethod.Get, caminho);
        pedido.Headers.Authorization = new AuthenticationHeaderValue("Bearer", tokens.access_token);
        using var resposta = await http.SendAsync(pedido);
        if (resposta.StatusCode == HttpStatusCode.Unauthorized && tentativa == 0) {
            tokens = await PedirTokenAsync(new() { ["grant_type"] = "refresh_token", ["refresh_token"] = tokens.refresh_token });
            continue;
        }
        resposta.EnsureSuccessStatusCode();
        return await resposta.Content.ReadAsStringAsync();
    }
}

record Tokens(string access_token, int expires_in, string refresh_token);
```

## Boas práticas

- **Usuário exclusivo para a integração**, num grupo de permissões só com o que ela usa. A integração enxerga o que o usuário enxerga.
- Senha e refresh_token **fora do código**: variável de ambiente ou cofre de segredos.
- Renove pelo refresh_token; faça login com a senha só quando a renovação falhar.
- O login antigo por cookie (`/api/account/login`) continua funcionando, mas obriga a guardar a sessão. Em integração nova, use o token ou a chave de API.
