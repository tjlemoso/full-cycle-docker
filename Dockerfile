# Utilizando a imagem do scratch como base
FROM scratch

# Copiando o binário compilado para a imagem
COPY hello-go /hello-go

# Definindo o comando que será executado ao rodar o container
CMD ["/hello-go"]
