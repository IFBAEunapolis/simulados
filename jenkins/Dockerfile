FROM jenkins
# Modificando o número de executores
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

# Instalando latex
USER root

# Dependências do latex e desenvolvimento
RUN apt-get update && apt-get install -y --no-install-recommends vim git python3 texlive-luatex auto-multiple-choice
RUN apt-get clean
RUN mkdir /home/jenkins
RUN chown jenkins:jenkins /home/jenkins
USER jenkins

