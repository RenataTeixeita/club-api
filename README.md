
# Club API

Neste projeto desenvolvi uma CRUD API de um clube de esportes em [Ruby](https://www.ruby-lang.org/pt/), utilizando o framework [Rails](https://rubyonrails.org/). 

## Documentação da API

#### Retorna todos os itens

```http
  POST /users
```

| Parâmetro   | Tipo       | Descrição                           |
| :---------- | :--------- | :---------------------------------- |
| `name` | `string` | **Obrigatório**. A chave da sua API |
| `email` | `string` | **Obrigatório**. A chave da sua API |
| `password` | `string` | **Obrigatório**. A chave da sua API |
| `address` | `string` | **Obrigatório**. A chave da sua API |
| `phone` | `string` | **Obrigatório**. A chave da sua API |

#### Retorna um JSON com esse formato

```
{
  "id": 1,
  "name": "Maria das Graças",
  "email": "maria.email.com.br",
  "password": "123456789",
  "address": "Rua 2, 3, Algum Bairro, Rio de Janeiro - RJ",
  "phone": "21999999999",
  "created_at": "2022-05-25T04:25:09.958Z",
  "updated_at": "2022-05-25T04:25:09.958Z"
}
```

```http
  GET users/${id}
```

| Parâmetro   | Tipo       | Descrição                                   |
| :---------- | :--------- | :------------------------------------------ |
| `id`      | `string` | **Obrigatório**. O ID do item que você quer |

## Referência

 - [Getting Started with Rails](https://guides.rubyonrails.org/v3.2/getting_started.html)
 - [Como criar um CRUD completo com Rails](https://www.devmedia.com.br/como-criar-um-crud-completo-com-rails/33986)
 


## Instalação

Instale club-api com npm

```bash
  npm install
```

## Para testar no seu PC

Digite no terminal

```bash
  rails server
```
Agora você pode testar no [Thunder Client](https://www.thunderclient.com/) ou [Insomnia](https://insomnia.rest/download).