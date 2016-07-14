# FROM jenkins:alpine
FROM jenkins

# Modificando o número de executores
COPY executors.groovy /usr/share/jenkins/ref/init.groovy.d/executors.groovy

# Todos os comandos a partir desse serão executados no usuário root
USER root

# Instalando dependências do latex e auto-multiple-choice
RUN apt-get clean
RUN apt-get update && apt-get install -y netselect-apt
RUN netselect-apt -o /tmp/sources.list
RUN mv -f /tmp/sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y --no-install-recommends texlive-luatex auto-multiple-choice texlive-latex-extra texlive-lang-portuguese
RUN apt-get install -y texlive-fonts-recommended
RUN apt-get autoremove -y
RUN apt-get clean

# Instalando Plugins do Jenkins
RUN /usr/local/bin/install-plugins.sh \
      envinject \
      git \
      build-pipeline-plugin \
      email-ext

# Criar pasta de usuário do jenkins
RUN mkdir /home/jenkins
RUN chown jenkins:jenkins /home/jenkins

# Retornar ao usuário do jenkins
RUN rm -Rf /var/jenkins_home/jobs
RUN chown -R jenkins /var/jenkins_home /usr/share/jenkins/ref
COPY config.xml /usr/share/jenkins/ref/config.xml
COPY jobs/ /usr/share/jenkins/ref/jobs

USER jenkins
