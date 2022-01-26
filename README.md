# Projeto de Engenharia de Software
Aplicativo de gestão financeira
# Concepção do sistema

**Rateio de dívidas da casa**: eis aí um problema clássico da vida de pessoas que não se conhecem, mas se veêm obrigadas a dividir um imóvel. Com estes desenvolvedores que vos falam acontece muito: você combina com seus colegas de casa uma porcentagem a ser paga dos boletos e contas recorrentes por cada um, mas muitas vezes as desculpas esfarrapadas vêm no dia do vencimento, e você fica com o abacaxi na mão. O **DivideA.Í.** é um novo app que resolve essa questão: você define uma modalidade de rateio para cada conta, adiciona as pessoas que moram com você ao grupo da sua casa e pronto, a quantia a ser paga por cada um aparece na tela do seu celular pra todo mundo ver!

**Exemplo:** suponha que você mora com dois amigos, o João e a Joana. João está desempregado no momento, então passa boa parte da tarde mergulhado nas mais novas séries da Netflix e do HBO Max, assinaturas recorrentes divididas por todos da casa. Joana, por sua vez, descobriu há alguns anos o universo das criptomoedas, então deixa o seu computador minerando Bitcoin durante o dia todo, enquanto está fora trabalhando. Caro leitor, é justo combinar que cada um dos moradores dessa casa vai pagar um terço desses boletos, tanto das assinaturas de serviços de streaming, quanto da conta de energia? **Bom, isso eles é que vão decidir!** O app **DivideA.Í.** proporciona isso: defina qual a porcentagem a ser paga por cada um da casa com antecedência, e elimine **de vez** a indecisão na hora do rateio!

<p align="center">
    <img src="https://i.imgur.com/QRqLtef.png" />
</p>

# Definição do ferramental

## Backend

### NodeJs 

O nodeJs surgiu como um interpretador do javascript sem necessidade de um browser. O nodeJs é uma execelente ferramenta para aplicações que buscam escalabilidade e estabilidade, além disso devido aos seus frameworks se torna algo poderoso para desenvolvimento de APIs. Segue as principais vantagens do uso do Node no backend:

- Fácil integração com bancos de dados (Relacionais e não relacionais)
- Comunicação com APIs (Application Programming Interface) e webservices
- Adequado para Criptografia e Segurança
- Facilidade em realizar Autenticação de usuário
- Comunicação via json com com Front-end e outros serviços

#### Grandes players que usam nodeJs:

- Uber
- Netflix
- Linkedin
- Nasa
- Walmart

### Express

O Node por si só daria conta de gerir uma API para a aplicação desejada, entretanto, existem frameworks que facilitam neste desafio que é o caso do microframework chamado Express.

O Express é usado para se ter uma aplicação web fornecendo ferramentas e utilitários HTTP e middlewares. Existem outras ferramentas parecidas no mercado mas o Express conta com a maior documentação e uma ampla comunidade de apoiadores.

### MongoDB

Para este projeto foi pensado em um banco de dados não relacional justamente pela flexibilidade de armazenar os dados sem usar uma estrutura específica, mas usando o formato JSON (JavaScript Object Notation). Partindo do ponto que para a aplicação que será desenvolvida serão armazenados os dados de Usuários, Residências, Boletos entre outras coisas então fica mais simples estruturar esses modelos com a junção NodeJs + MongoDb.


---------------------------------------------------------------

## Frontend

### ReactJs

O ReactJs é uma biblioteca JavaScript para facilitar a criação de interfaces de usuários, faz com que cada componente da tela seja uma view declarativa, o que deixa o código mais previsível e fácil de ser implementado.


### React Native

O React Native é uma versão do reactJs focada em mobile, com o React Native é possível ao mesmo tempo criar uma aplicação para IOS e para Android. O código é escrito em javascript e renderizado em código nativo para as duas plataformas.
# Requisitos Preliminares do sistema

Os requisitos são detalhados no documento de [especificações de requisitos](https://github.com/yuri-almeid/engsoft-Project/blob/main/docs/SRS.pdf).

# Planejamento do trabalho
O trabalho será organizado e gerenciado via [Trello](https://trello.com/invite/b/ssYTa750/2ad819f23522e75f6278c0887b2574bf/engsof) seguindo a metodologia SCRUM.
