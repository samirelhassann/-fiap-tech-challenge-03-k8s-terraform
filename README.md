# FIAP SOAT - Grupo 65 - Tech Challenge #03 - K8S + Terraform

Repositório do Tech Challenge #03 da FIAP/Alura, no curso SOAT3. Este projeto tem o intuito de armazenar os arquivos de configuração do [Terraform](https://www.terraform.io/) dos seguintes recursos na azure:
  - [Azure Container Registry](https://azure.microsoft.com/en-us/products/container-registry)
  - [Azure Kubernetes Services](https://azure.microsoft.com/pt-br/products/kubernetes-service)
  - [API Management](https://azure.microsoft.com/pt-br/products/api-management)

Integrado com o [Github Actions](https://docs.github.com/pt/actions), foi criado uma esteira de devops tanto para master quanto para pull request.

A esteira de devops via `pull_request` realiza:
1. Login via service principal na azure
2. Valida os arquivos da pasta infra
3. Realiza o planejamento da execução via `terraform plan` para verificar se existe algum erro de código.

A esteira do merge na `master` realiza:
1. Login via service principal na azure
2. Valida os arquivos da pasta infra
3. Realiza o planejamento da execução via `terraform plan` para verificar se existe algum erro de código.
4. Aplicação das alterações no provider via `terraform apply`


## Membros
- [Samir El Hassan](github.com/samirelhassann)
