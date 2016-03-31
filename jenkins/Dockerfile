FROM jenkins

# Modificando o número de executores
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

# Todos os comandos a partir desse serão executados no usuário root
USER root

# Instalando Plugins do Jenkins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

# Instalando dependências do latex e auto-multiple-choice
RUN apt-get update && apt-get install -y --no-install-recommends vim git python3 texlive-luatex auto-multiple-choice
RUN apt-get clean

# Criar pasta de usuário do jenkins
RUN mkdir /home/jenkins
RUN chown jenkins:jenkins /home/jenkins

# Adicionar pasta do enade-builder à imagem
ADD enade-builder /home/jenkins/enade-builder/

# Copiando os jobs para a pasta do jenkins
COPY jobs /var/jenkins_home/jobs
RUN chown jenkins:jenkins /var/jenkins_home/jobs

# Retornar ao usuário do jenkins
USER jenkins

