# BD Empresa de cursos - Resilia Educação 📒💙
Projeto em grupo do curso de Desenvolvedor Full Stack da Resilia Educação em parceria com o Ebanx. 
Desenvolvimento de um banco de dados para gerenciamento da estrutura de ensino da empresa.

## Apresentação 🚀
Criação de um banco de dados usado para armazenar as informações da empresa de cursos Resilia. Foi utilizado o [MySQL Workbench](https://www.mysql.com/products/workbench/) para criar a base de dados seguindo o diagrama feito no [dbDiagram](https://dbdiagram.io/home) para facilitar a modelagem do banco. Algumas pesquisas foram feitas usando o [Google Sheets](https://www.google.com/intl/pt-BR/sheets/about/) para tirar algumas informações interresantes da nossa base de dados. Para melhor organização da equipe na divisão dos trabalhos usamos o [Trelo](https://trello.com/pt-BR). E para apresentar o trabalho de maneira mais visual utilizamos o [Canva](https://www.canva.com/pt_br/) para estilizar e montar a apresentação. 

## Funcionalidades ⚙️
- Cadastro de pessoas 
- Cadastro de endereços de cada pessoa
- Designação para turma: estudantes e facilitadores 
- Designação para curso: turma e módulo 
- Acompanhamento do status do estudante (ativo ou inativo)
- Consulta da frequência e das notas de cada aluno

## Diagrama do banco de dados 📈
Para melhor entendimento da estrutura do banco, foi criado um **MER** (Modelo Entidade Relacionamento) para melhor visualização dos relacionamentos e para a modelagem das estruturas das tabelas utilizadas no sistema. 

![dbDiagrama](https://github.com/Thzzao/BancoDeDadosDaResilia/assets/95200381/e23b2478-f0a2-4825-ad86-70a3455b959a)

## Entidades 📋 
O banco foi desenvolvido pensando em 11 entidades principais: 
- `turma`: tabela onde contém os dados da turma como o nome da turma, período e a identificação do curso.
- `curso`: contém o nome do curso e a duração.
- `curso_modulo`: tabela usada para fazer a correspondência entre o curso e seus respectivos módulos. 
- `modulo`: informa o nome do módulo e a quantidade de aulas.
- `pessoa`: contém os dados de cadastro de todas as pessoas envolvidas na empresa.
- `endereco`: armazena os dados de endereço de cada pessoa cadastrada.
- `facilitador`: referência a pessoa cadastrada como facilitador e armazena sua senha de acesso.
- `facilitador_turma`: usada para referenciar os facilitadores em cada turma. 
- `estudante`: referência a pessoa cadastrada como estudante e salva sua senha de acesso.
- `estudante_turma`: tabela usada para verificar o status do estudante e referenciá-lo em uma turma. 
- `status`: tabela que armazena a situação de cada estudante: suas notas, frequência e taxa de evasão.

## Requisitos e instalação 🔧
1. Para usar esse banco de dados primeiro tenha instalado em seu computador o [MySQL Workbench.](https://www.mysql.com/products/workbench/)

2. Após instalado, clone o repositório em sua máquina local:
```bash
git clone https://github.com/Thzzao/BancoDeDadosDaResilia.git
```

3. Execute o script no MySQL chamado **Resilia_banco.sql** para criar o banco de dados em seu computador.

4. Execute o script **Resilia_dados.sql** para popular o banco de dados com as informações de cada tabela criada. 

## Uso 🛠️

Além de todos os cadastros que o banco é capaz de fazer para controlar os dados da empresa, ele também foi usado para responder algumas perguntas de cunho estratégico como por exemplo: a porcentagem de estudantes com status de evasão agrupados por turma, a quantidade total de estudantes cadastrados no banco, quais pessoas facilitadoras atuam em mais de uma turma, quais estudantes tem a frequência acima de 80% e notas maiores ou iguais a 7 ou notas menores ou iguais a 5. Além dessas, é possivel fazer pesquisas para atender outras perguntas que nosso banco é capaz de responder.

Para verificar as respostas dessas perguntas você pode rodar o script **Resilia_perguntas.sql** onde as queries (consultas) estão prontas, só será necessário rodar elas no [MySQL Workbench.](https://www.mysql.com/products/workbench/) após a criação do banco e da população na parte de *Requisitos e instalação*.

## Equipe de desenvolvimento ✒️
Este trabalho foi elaborado por uma squad de 5 pessoas. Cada membro contribuiu com suas habilidades únicas para criar a aplicação. Os integrantes da equipe foram:

<div align="center" float="left">
  <img src="https://github.com/Thzzao/BancoDeDadosDaResilia/assets/95200381/7c61b697-a0e6-470b-81fb-4590abd37003" width="130" height="130"/>
  <img src="https://github.com/Thzzao/BancoDeDadosDaResilia/assets/95200381/9570f45e-2e6a-4adb-81e1-8ed6a4be84f3" width="130" height="130"/>
  <img src="https://github.com/Thzzao/BancoDeDadosDaResilia/assets/95200381/7f78379d-7daa-4c43-ba6a-ce1adec4df3f" width="130" height="130"/>
  <img src="https://github.com/Thzzao/BancoDeDadosDaResilia/assets/95200381/e00de6ad-2715-428b-8c05-270cf1cd32be" width="130" height="130"/>
  <img src="https://github.com/Thzzao/BancoDeDadosDaResilia/assets/95200381/a834e153-85a6-46aa-8f7b-11faf38bf83f" width="130" height="130"/>



### [Jhoshuan Cristopher](https://github.com/Jhosh-Christopher) | [Thiago Souza](https://github.com/Thzzao) | [Malena Stefano](https://github.com/tsarinatsarina) | [Dayane Stefane](https://github.com/Dayane99) | [Emerson Chagas</p>](https://github.com/emerchagas)

</div> 


