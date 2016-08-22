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

## Instalando o gogs

Após a instalação e inicio do serviço, é necessário realizar a instalação e algumas configurações para que o projeto funcione.

A primeira configuração necessária é realizada no servidor da conexão entre o mysql e o gogs.

Abra um navegador e entre no endereço do gogs. O endereço padrão é [http://127.0.0.1:3000/](http://127.0.0.1:3000/), você verá a página de instalação do gogs:

![Instalação do Gogs](/docs/imagens/gogs_instalacao.png)

Na parte de "Configurações de Banco de Dados", escolha o tipo MySQL, o host padrão é o 127.0.0.1:3306 (ip:porta), e os dados do usuário e banco de dados estão definidos no "docker-compose.yml" em forma de *enviroment*.

``` yaml
  - MYSQL_USERNAME=root
  - MYSQL_DATABASE=gogs
  - MYSQL_ROOT_PASSWORD=FCQW3HGWpsLPmb4h
```

Esses são os dados padrões do projeto, mais é possível modifica-los de acordo com a sua necessidade, lembrando que é necessário reiniciar os servidores após a mudança, executando o seguinte comando dentro da pasta do projeto:
``` sh
$ docker-compose restart
```

**As outras configurações devem ser mantidas.**

Finalize a configuração clicando em "Instalar Gogs".

## Configurando o Gogs

Após sua instalação, é necessário executar os seguintes passos:

* Criar uma Conta
* Criar os Repositórios

A conta é necessária para identificar os repositórios com os arquivos das provas.

Para criar uma conta clique no botão "Registrar" no canto direito da tela do gogs, aparecerá o formulário de cadastro:

![Registro do Gogs](/docs/imagens/gogs_login.png)

Preencha o formulário com as informações necessárias de usuário, email e senha. Guarde essas informações pois ela será necessária para criar/gerenciar os repositórios.

Após a criação da conta, clique no botão "Entrar" no canto direito da tela, e digite as informação de usuário (usuário e senha) e clique em "Entrar".

Neste momento, ainda não foi criado nenhum repositório. Precisamos criar os seguintes repositórios:

**TODO: Modificar nomes dos repositórios.**

* prova_turma_{ano} - Esse repositório é onde ficaram guardadas as questões para cada disciplina, e as informações da prova.

* lista_alunos_{ano} - Neste repositório ficará o arquivo com as informações dos alunos, especificamente o arquivo *.xlsx* recebido.

**OBS**: {ano} substituído pelo ano da turma.

Para criar um repositório siga os seguintes passos:

* No canto direito da tela tem um ícone com um "+" clique neste ícone, e depois clique em "Novo Repositório"

  ![Novo Repositório](/docs/imagens/novo_repositorio.png)

* Aparecerá o seguinte formulário:

  ![Formulário Repositório](/docs/imagens/criar_atividade_repo.png)

Digite o nome do repositório e clique em "Criar Repositório".

O primeiro repositório *lista\_alunos\_{ano}*, precisa ter um arquivo com o nome de *alunos.csv* contento as informações dos alunos.

O segundo, chamado de *prova\_turma\_{ano}* contém as informações da prova, ele precisa está nesse formato:

  ![Repositório da Prova](/docs/imagens/estrutura_repo_prova.png)

Dentro da pasta **Questoes** ficam os arquivos com as questões do *AMC*, para cada disciplina do curso existe um arquivo .tex seguindo os padrões de questões do *AMC* que podem ser encontradas em sua [Documentação](http://home.gna.org/auto-qcm/auto-multiple-choice.en/latex.shtml).

Os arquivos de questões ficam nesse formato:

  ![Lista Questões](/docs/imagens/lista_questoes.png)
