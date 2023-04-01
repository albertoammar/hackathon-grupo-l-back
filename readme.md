# Projeto stream video

## Build

Para gerar o build do projeto, execute o comando:
```shell
  docker build -t stream-video-back .
```

Você pode rodar o projeto também com docker-compose:
```shell
  docker-compose up -d
```


## Deploy

Toda vez que for realizado um push, o projeto é buildado e deployado no servidor de produção.