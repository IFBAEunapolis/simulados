# Instalação

Como todos os serviços do projeto funcionam dentro do Docker, a instalação é simples.

**1.** Inicie o serviço do docker
  * Caso o sistema for baseado no **Debian Ubuntu**, utilize: `$ sudo service docker start`.
  * Se for baseado no **Archlinux** com utilize: `$ sudo systemctl start docker`.
  * Outros: Verifique na documentação do seu sistema.

**2.** Baixe ou clone o repositório do projeto.
  * [Download](https://github.com/IFBAEunapolis/simulados/archive/master.zip)
  * Clonar o repositório via git: ` $ git clone https://github.com/IFBAEunapolis/simulados `.

**3.** Entre na pasta baixada/clonada e digite ` $ docker-compose up`, o docker irá iniciar todos os serviços (jenkins, gogs e mysql).

