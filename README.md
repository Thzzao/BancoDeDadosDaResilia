# BD Empresa de cursos - Resilia Educação 📒💙
Projeto em grupo do curso de Desenvolvedor Full Stack da Resilia Educação em parceria com o Ebanx. 
Desenvolvimento de um banco de dados para gerenciamento da estrutura de ensino da empresa.

## Apresentação
Criação de um banco de dados usado para armazenar as informações da empresa de cursos Resilia. Foi utilizado o {c:blue}**MySQL Workbench**{/c} para criar a base de dados seguindo o diagrama feito no **dbDiagram** para facilitar a modelagem do banco. Algumas pesquisas foram feitas usando o **Google Sheets** para tirar algumas informações interresantes da nossa base de dados. Para melhor organização da equipe na divisão dos trabalhos usamos o **Trelo**. E para apresentar o trabalho de maneira mais visual utilizamos o **Canva** para estilizar e montar a apresentação. 

## Funcionalidades 
- Cadastro de pessoas 
- Cadastro de endereços de cada pessoa
- Designação para turma: estudantes e facilitadores 
- Designação para curso: turma e módulo 
- Acompanhamento do status do estudante (ativo ou inativo)
- Consulta da frequência e das notas de cada aluno

## Diagrama do banco de dados 
Para melhor entendimento da estrutura do banco, foi criado um **MER** (Modelo Entidade Relacionamento) para melhor visualização dos relacionamentos e para a modelagem das estruturas das tabelas utilizadas no sistema. 

![Copy_of_Untitled_Diagram_1](https://github.com/Thzzao/BancoDeDadosDaResilia/assets/95200381/ed082787-2e94-4501-ac1f-7fc7872817fb)
Para acessar o diagrama [clique aqui!](https://dbdiagram.io/) 

## Entidades
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

## Requisitos e instalação 
1. Para usar esse banco de dados primeiro tenha instalado em seu computador o [MySQL Workbench.](https://www.mysql.com/products/workbench/)

2. Após instalado, clone o repositório em sua máquina local:
```bash
git clone https://github.com/Thzzao/BancoDeDadosDaResilia.git
```

3. Execute o script no MySQL chamado **resilia-schema.sql** para criar o banco de dados em seu computador.

4. Execute o script **Resilia_dados.sql** para popular o banco de dados com as informações de cada tabela criada. 

## Uso 


<!-- Colocar as pergutas aqui como exemplo de uso -->


## Equipe de desenvolvimento
Este trabalho foi elaborado por uma squad de 5 pessoas. Cada membro contribuiu com suas habilidades únicas para criar a aplicação. Os integrantes da equipe foram:

<div class="container">

[<img class="imagem" src="https://manicpixiecat.github.io/ProjetoSquad3/src/img/Integrantes/Thiago.JPG"><p>Jhoshuan Cristopher</p>](https://github.com/Jhosh-Christopher)

[<img class="imagem" src="https://manicpixiecat.github.io/ProjetoSquad3/src/img/Integrantes/Thiago.JPG"><p>Thiago Souza</p>](https://github.com/Thzzao) 

[<img class="imagem" src="https://manicpixiecat.github.io/ProjetoSquad3/src/img/Integrantes/Thiago.JPG"><p>Malena Stefano</p>](https://github.com/tsarinatsarina)

[<img class="imagem" src="https://manicpixiecat.github.io/ProjetoSquad3/src/img/Integrantes/Thiago.JPG"><p>Dayane Stefane</p>](https://github.com/Dayane99) 

[<img class="imagem" src="https://manicpixiecat.github.io/ProjetoSquad3/src/img/Integrantes/Thiago.JPG"><p>Emerson Chagas</p>](https://github.com/emerchagas)

</div> 
<style>
    .container{
        display: flex;
        flex-direction: column;
        height: 200px;
        justify-content: center;
        align-items: center;
        flex-wrap: wrap;
    }
    .imagem{
        width:100px;
    }
</style>

