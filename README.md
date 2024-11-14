Olá devs!
Agora é a hora de botar a mão na massa. Para este desafio, você precisará criar o usecase de listagem das orders.
Esta listagem precisa ser feita com:
- Endpoint REST (GET /order)
- Service ListOrders com GRPC
- Query ListOrders GraphQL
Não esqueça de criar as migrações necessárias e o arquivo api.http com a request para criar e listar as orders.

Para a criação do banco de dados, utilize o Docker (Dockerfile / docker-compose.yaml), com isso ao rodar o comando docker compose up tudo deverá subir, preparando o banco de dados.
Inclua um README.md com os passos a serem executados no desafio e a porta em que a aplicação deverá responder em cada serviço.

# Instruções para Executar o Projeto

Siga os passos abaixo para iniciar o projeto:

## Passo 1: Iniciar os Containers com Docker

Execute o comando abaixo para iniciar os containers em segundo plano:

```bash
docker-compose up -d
```

## Passo 2: Portas e serviços

| Serviço            | Porta |
|--------------------|-------|
| Web Server         | 8000  |
| gRPC Server        | 50051 |
| GraphQL Server     | 8080  |