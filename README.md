# Jenkins 2 Master e Slaves com Docker

## Pré-requisitos

- Docker
- AWSCLI

## Logando no AWS ECR (Elastic Container Registry)

<strong> Instalando  o AWSCLI no Linux</strong>

```
pip install awscli --upgrade
```

## Subindo o projeto

Nessa etapa vamos realizar o clone do repositório e iniciando o docker-compose.yml, após esse passo o Jenkins já estará no ar pronto para uso.

<strong>Acesso via URL</strong>

Acesse o Jenkins via URL para iniciar a configuração e escolha a opção "install suggested plugins"

http://ip-do-seu-jenkins:8085


Por padrão a primeira vez que você vai iniciar o Jenkins é solicitado uma secret para o desbloqueio, para obter essa informação precisamos olhar dentro do Container:

1. Identificar o container id
```
docker container ps |grep jenkins-master
```

2. Executar o comando abaixo substituindo o valor de <container_id> pelo id capturado no comando anterior.
```
docker container exec -it <container_id> cat /var/jenkins_home/secrets/initialAdminPassword
```
