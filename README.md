# Express API with Vagrant and Docker Swarm and mongoDb

### Exemplo de uma simples API que lista, cadastra, deleta e modifica um produto

Para executar essa api em VMs da sua infra local, basta executar a maquina virtual com vagrant:

    vagrant up

Se você deseja levantar apenas os containers pode optar pelo docker-compose:

    docker-compose up -d
    
Serão levantadas 3 VMs sendo uma como master e 2 como workers

vai ser iniciado um container com um servidor mongodb e um serviço com 15 replicas de uma api express

esse é apenas um exemplo simples
