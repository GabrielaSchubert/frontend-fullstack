# Dockerfile
FROM nginx:alpine

# Remove o conteúdo default do nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia os arquivos do projeto para o diretório padrão do nginx
COPY . /usr/share/nginx/html

# Expor porta padrão do nginx
EXPOSE 80

# Comando padrão (já é nginx rodando)
CMD ["nginx", "-g", "daemon off;"]
