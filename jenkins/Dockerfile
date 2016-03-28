FROM jenkins
# Modificando o número de executores
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

# Instalando latex
USER root
# Dependências latex
RUN apt-get update && apt-get install -y texlive-latex-base texlive-luatex

# Dependências de desenvolvimento
RUN apt-get install -y vim git python3 auto-multiple-choice
RUN apt-get clean
RUN mkdir /home/jenkins
RUN chown jenkins:jenkins /home/jenkins
USER jenkins

