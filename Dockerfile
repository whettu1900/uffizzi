
FROM node:latest


EXPOSE 3000


WORKDIR /app


COPY . .


RUN apt-get update && \
    apt-get install -y wget && \
    chmod +x server.js && \
    npm install


CMD ["node", "server.js"]