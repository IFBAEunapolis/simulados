# Projeto Simulados

{% plantuml %}
@startuml
node "Integra<U+00e7><U+00e3>o Continua - Jenkins" as jenkins
node "Servidor Git - Gogs" as gogs
database "Banco de Dados  - MySQL" as mysql
node "Auto Multiple Choice" as amc
jenkins -- gogs
gogs -- mysql
jenkins .. amc

@enduml
{% endplantuml %}
