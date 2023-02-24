# Express API with Vagrant and Docker Swarm and mongoDb

### Exemplo de uma simples API que lista, cadastra, deleta e modifica um produto

#### Usando o Vagrant
Para executar essa api em VMs da sua infra local, basta executar a maquina virtual com vagrant:

    vagrant up

Serão levantadas 2 VMs sendo uma como master e um como worker.

Você pode adicionar o workers no arquivo Vagrant file:

```ruby
machines = {
  "master" => {"memory" => "1024", "cpu" => "1", "ip" => "100", "image" => "bento/ubuntu-22.04"},
  "node01" => {"memory" => "1024", "cpu" => "1", "ip" => "101", "image" => "bento/ubuntu-22.04"},
  "NOME_DO_NODE" => {"memory" => "1024", "cpu" => "1", "ip" => "IP_DIFERENTE", "image" => "bento/ubuntu-22.04"}
}
```

Será iniciado um container com um servidor mongodb e um serviço com 15 replicas de uma api express

você terá acesso a api pelos seguintes endpoints:

http://10.10.10.100:3001/ap/products pelo método GET

http://10.10.10.100:3001/ap/products pelo método POST passando o seguite body:

```json
{
  "title": "NOME_DO_PRODUTO",
  "description": "DESC_DO_PRODUTO",
  "url": "SITE"
}
```
existem outros endpoits como vc pode verificar no arquivo **/app/src/routes.js**

#### Com docker Compose
Se você deseja levantar apenas os containers pode optar pelo docker-compose:

    docker-compose up -d

esse é apenas um exemplo simples