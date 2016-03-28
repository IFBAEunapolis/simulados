FROM jenkins
# Modificando o número de executores
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

# Instalando latex
USER root

# Adicionar pasta do jenkins à imagem
# ADD jenkins_home /var/jenkins_home

# Instalando Plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

COPY jobs /var/jenkins_home/jobs

# Dependências do latex e desenvolvimento
RUN apt-get update && apt-get install -y --no-install-recommends vim git python3 texlive-luatex auto-multiple-choice
RUN apt-get clean

# Criar pasta de usuário do jenkins
RUN mkdir /home/jenkins
RUN chown jenkins:jenkins /home/jenkins

# Adicionar pasta do enade-builder à imagem
ADD enade-builder /home/jenkins/enade-builder/

USER jenkins

