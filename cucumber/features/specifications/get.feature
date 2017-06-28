#language: pt

Funcionalidade: Utilizando o verbo GET

Eu, como interessado em automação
Desejo realizar este exercício - Automação Back-End.

@executa_get
Cenario: Automatizando GET

 Dado que eu faça um GET no endpoint claim_challenge response 401
 Entao o retorno dele será uma dica para prosseguir a rota

 Entao que eu faça um GET no endpoint first_step response 200
 Entao o retorno dele será uma dica para prosseguir a rota2

 Entao que eu faça um GET no endpoint first_step response 401
 Entao o retorno dele será uma dica para prosseguir a rota3

 Entao que eu faça um GET no endpoint first_step response 200 token
 Entao o retorno dele será uma dica para prosseguir a rota4

 Entao que eu faça um GET no endpoint second_step response 401
 Entao o retorno dele será uma dica para prosseguir a rota5

 Entao que eu faça um GET no endpoint second_step response 200
 Entao o retorno dele será uma dica para prosseguir a rota6

 Entao que eu faça um POST no endpoint last_step response 200
 Entao o retorno dele será uma dica para prosseguir a rota7