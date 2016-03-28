# Projeto Simulados

{% plantuml %}
@startuml
node "Integração Continua - Jenkins" as jenkins
node "Servidor Git - Gogs" as gogs
database "Banco de Dados  - MySQL" as mysql
node "Auto Multiple Choice" as amc
jenkins -- gogs
gogs -- mysql
jenkins .. amc

@enduml
{% endplantuml %}

Neste livro coloquei algumas informações que encontrei na internet e compilei em um lugar só para facilitar os estudos.


| A                    | B       | C      |
|----------------------|---------|--------|
| Valor 1              | Valor2  | Valor3 |
| Valor 2              | valor 3 | valor4 |
| Novo valor na tabela | teste   | teste  |

**Teste de texto**

*Esse fica italico*


