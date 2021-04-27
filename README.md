# Kubernetes

Este repositorio tem como objetivo centralizar playbooks Ansible para adiminstração de Kubernetes. Além de compartilhar conhecimento entre os membros do suprote.

## Getting Started

Atualmente temos um playbook para subir um cluster kubernetes. Um proximo passo é adicionar um playbook para adicionar uma maquina ao cluster.
Este playbook foi escrito para as especificidades do Ubuntu 18, caso queira executar em outra versão, deverá fazer as alterações necessárias na task de condiguração de rotas no playbook create-cluster.yml

### Prerequisites

Para a execução deste playbook são necessários os seguintes prerequisitos:

1 - O ansible instalado na sua máquina para executar o playbook.
2 - Três ou mais instancias na cloud.
3 - Ubuntu 18.04 nas nas maquians do cluster.
4 - Garantir que a sua maquina ou máquina origem tem acesso ssh com chave às máquinas do cluster.


### Installing

Para iniciar o teste, é necessário instalar o ansible na sua máquina ou na máquina origem responsável por disparar o playbook. O ubuntu já tem o pacote ansible em seu repositório default, com isso basta executar o seguinte comando:

```
sudo apt update
sudo apt install ansible
```

Agora vamos clonar o repositorio do kubernetes no git do suporte.


```
git clone https://git.lsd.ufcg.edu.br/ops/kubernetes.git
cd kubernetes
```

## Modificações necessárias

Algumas modificações são necessárias para a execução em seu ambiente. Por hora só precisamos modificar o arquivo de inventário:

```
vim hosts.yml
```

Altere os endereços IPs de acordo com suas instâncias.


### Executando o playbook

Com as alterações realizadas podemos executar o playbook para criar nosso cluster, estando no mesmo nível do arquivo hosts.yml rode o seguinte comando:

```
ansible-playbook -i hosts.yml main.yml
```

### And coding style tests

Para verificar se o cluster foi criado com sucesso, rode o seguinte comando no nó master:

```
sudo kubecetl get pods --all-namespaces
```

Se todos os pods estão com status 'running' seu cluster está fechado e funcional.


## Authors

* **Whasley Cardoso** **Suporte LSD** - <!--*Initial work* - [PurpleBooth](https://github.com/PurpleBooth) -->


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

* Suporte LSD
