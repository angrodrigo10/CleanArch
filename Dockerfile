# Usar uma imagem do Go
FROM golang:1.23.2

# Instalar dependências, como o cliente MySQL, se necessário
# RUN apk --no-cache add ca-certificates

# Configurar o diretório de trabalho
WORKDIR /app

# Copiar os arquivos go.mod e go.sum e baixar as dependências
COPY go.mod go.sum ./
RUN go mod download

# Copiar o código-fonte da aplicação
COPY . .

# Definir o diretório de trabalho específico do comando
WORKDIR /app/cmd/ordersystem

# Expor as portas usadas pelos servidores
EXPOSE 8000 50051 8080

# Comando para rodar a aplicação com `go run`
CMD ["go", "run", "main.go", "wire_gen.go"]
