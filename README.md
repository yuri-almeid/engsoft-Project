# Projeto de Engenharia de Software
Aplicativo de gestão financeira
## Concepção do sistema

**Rateio de dívidas da casa**: eis aí um problema clássico da vida de pessoas que não se conhecem, mas se veêm obrigadas a dividir um imóvel. Com estes desenvolvedores que vos falam acontece muito: você combina com seus colegas de casa uma porcentagem a ser paga dos boletos e contas recorrentes por cada um, mas muitas vezes as desculpas esfarrapadas vêm no dia do vencimento, e você fica com o abacaxi na mão. O **DivideA.Í.** é um novo app que resolve essa questão: você define uma modalidade de rateio para cada conta, adiciona as pessoas que moram com você ao grupo da sua casa e pronto, a quantia a ser paga por cada um aparece na tela do seu celular pra todo mundo ver!

**Exemplo:** suponha que você mora com dois amigos, o João e a Joana. João está desempregado no momento, então passa boa parte da tarde mergulhado nas mais novas séries da Netflix e do HBO Max, assinaturas recorrentes divididas por todos da casa. Joana, por sua vez, descobriu há alguns anos o universo das criptomoedas, então deixa o seu computador minerando Bitcoin durante o dia todo, enquanto está fora trabalhando. Caro leitor, é justo combinar que cada um dos moradores dessa casa vai pagar um terço desses boletos, tanto das assinaturas de serviços de streaming, quanto da conta de energia? **Bom, isso eles é que vão decidir!** O app **DivideA.Í.** proporciona isso: defina qual a porcentagem a ser paga por cada um da casa com antecedência, e elimine **de vez** a indecisão na hora do rateio!

<p align="center">
    <img src="https://i.imgur.com/qTeYTpO.png" />
</p>

## Definição do ferramental

# Backend

## NodeJs 

O nodeJs surgiu como um interpretador do javascript sem necessidade de um browser. O nodeJs é uma execelente ferramenta para aplicações que buscam escalabilidade e estabilidade, além disso devido aos seus frameworks se torna algo poderoso para desenvolvimento de APIs. Segue as principais vantagens do uso do Node no backend:

- Fácil integração com bancos de dados (Relacionais e não relacionais)
- Comunicação com APIs (Application Programming Interface) e webservices
- Adequado para Criptografia e Segurança
- Facilidade em realizar Autenticação de usuário
- Comunicação via json com com Front-end e outros serviços

### Grandes players que usam nodeJs:

- Uber
- Netflix
- Linkedin
- Nasa
- Walmart

## Express

O Node por si só daria conta de gerir uma API para a aplicação desejada, entretanto, existem frameworks que facilitam neste desafio que é o caso do microframework chamado Express.

O Express é usado para se ter uma aplicação web fornecendo ferramentas e utilitários HTTP e middlewares. Existem outras ferramentas parecidas no mercado mas o Express conta com a maior documentação e uma ampla comunidade de apoiadores.

## MongoDB

Para este projeto foi pensado em um banco de dados não relacional justamente pela flexibilidade de armazenar os dados sem usar uma estrutura específica, mas usando o formato JSON (JavaScript Object Notation). Partindo do ponto que para a aplicação que será desenvolvida serão armazenados os dados de Usuários, Residências, Boletos entre outras coisas então fica mais simples estruturar esses modelos com a junção NodeJs + MongoDb.


---------------------------------------------------------------

# Frontend

## ReactJs

O ReactJs é uma biblioteca JavaScript para facilitar a criação de interfaces de usuários, faz com que cada componente da tela seja uma view declarativa, o que deixa o código mais previsível e fácil de ser implementado.


## React Native

O React Native é uma versão do reactJs focada em mobile, com o React Native é possível ao mesmo tempo criar uma aplicação para IOS e para Android. O código é escrito em javascript e renderizado em código nativo para as duas plataformas.
## Requisitos Preliminares do sistema
### Requisitos funcionais
Requisito | Descrição
:--------- | :--------- 
Cadastrar usuário | Os usuários serão cadastrados no sistema e serão identificados por um identificador único que será o e-mail.
Editar cadastro | O usuário pode editar sua informações de cadastro.
Excluir cadastro | Possibilita o usuário excluir seu cadastro.
Validar e-mail | O campo e-mail será validado. 
Efetuar login | Autenticação de usuários cadastrados no sistema, permitindo acesso as funcionalidades do aplicativo.
Criar grupo | Os usuários poderão criar diferentes grupos para gerenciar atividades diversas.
Compartilhar grupo | Um usuário pode convidar outro usuário para um grupo.
Ingressar em grupo | Um usuário pode ingressar em outro grupo desde que tenha um convite.
Editar grupo | Usuário pode editar grupo cadastrado.
Excluir grupo | Usuário pode excluir grupo cadastrado.
Agregar dívida | Todos os usuários de um grupo poderão cadastrar dívidas ao grupo. O cadastro de um dívida a um grupo consiste em anexar o arquivo PDF do boleto ao aplicativo.
Visualizar dívida | As dívidas registradas em um grupo estarão disponíveis para visualização de qualquer usuário integrante do grupo.
Alterar dívida | Qualquer integrante do grupo poderá alterar o estado da dívida, por exemplo colocar o estado como dívida paga ou dívida cancelada.
Notificar usuários | Os usuários poderão configurar o aplicativo para que notificações de informações importantes, como data de validade próxima de expirar, alterações de estado de uma dívida e adição de nova dívida, entre outras. As notificações serão feitas tanto via aplicativo quanto via e-mail.
Buscar em grupo | Permitir ao usuário fazer uma busca por texto de um grupo sobre o qual deseja informações. Com base no texto fornecido pelo usuário, verificar se existem grupos registrados cujo nome contenha o texto de forma que seja possível revelar informações como dívidas e usuários integrantes caso um grupo relacionado ao texto existir.
Buscar em dívidas | Permitir ao usuário fazer uma busca por texto de uma dívida sobre o qual deseja informações. Com base no texto fornecido pelo usuário, verificar se existem dívidas registradas cujo nome contenha o texto de forma que seja possível revelar informações como grupo, valor, data de validade entre outras caso uma dívida relacionada ao texto existir.

### Requisitos não funcionais
Requisito | Descrição
:--------- | :---------
Usuabilidade | O sistema deve prover suas funcionalidade ao usuário da maneira mais usual possível, de modo que em poucas interações e de forma intuitiva o usuário consiga encontrar as informações que deseja.
Portabilidade | O sistema será suportado apenas para aplicativo mobile.
Desempenho quanto à utilização de recursos | O sistema deve usar os recursos disponibilizados pelos aparelhos móveis de forma exata às suas necessidades, não desperdiçando a utilização de nenhum destes recursos, evitando o desperdício de informações e aumentando a autonomia da bateria do aparelho.
Desempenho quanto ao tempo de resposta | O sistema deve ter um limite na obtenção das respostas a serem fornecidas ao usuário dependendo da operação requisitada, de forma que o usuário não fique esperando infinitamente por uma opção e seja corretamente informado quando alguma operação está demorando mais do que o previsto ou estourou seu tempo de limite.
Tratamento de erros | A aplicação deve tratar erros inerentes ao sistema em que está rodando, como problemas na conexão, eventual fechamento da aplicação por falta de memória, falta de espaço local para armazenamento de dados, entre outros, de forma que seu funcionamento não seja prejudicado ou, em última instância, que o usuário seja avisado do porquê do não funcionamento da aplicação.
Desempenho quanto à utilização da conexão de dados | A aplicação deve utilizar somente o necessário da conexão de dados provida pelo aparelho móvel, de forma a não ocupar desnecessariamente recursos compartilhados com outras aplicações.
Retorno do tempo das operações ao usuário | O usuário deve ter retorno visual claro da demora de suas operações, de modo que saiba estimar quanto tempo cada uma delas demorará a atender as suas necessidades.
Implementação | O sistema não possuirá restrição quanto ao ferramental utilizado, desde que se houver custo ao cliente, este deve ser aprovado previamente.
Funcionalidade | O sistema seguirá um desenvolvimento incremental.
Manutenibilidade | O sistema será implementado seguindo uma filosofia _Clean Code_.
## Diagrama de casos de uso

<p align="center">
    <img src="https://user-images.githubusercontent.com/63003622/146835139-24b0db53-3d69-445e-8f80-7f1ea6aed265.jpg" width=50% height=50% />
</p>

## Planejamento do trabalho
O trabalho será organizado e gerenciado via [Trello](https://trello.com/invite/b/ssYTa750/2ad819f23522e75f6278c0887b2574bf/engsof) seguindo a metodologia SCRUM.
