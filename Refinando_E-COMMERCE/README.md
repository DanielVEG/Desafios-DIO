# 📌 Desafios DIO - Projeto de Banco de Dados

## 📖 Descrição do Desafio
O esquema deverá ser adicionado a um repositório do **Github** para futura avaliação do desafio de projeto.  
Adicione ao **README** a descrição do projeto conceitual para fornecer o contexto sobre seu esquema.

---

## 🎯 Objetivo
Refinar o modelo apresentado acrescentando os seguintes pontos:

1. **Cliente PJ e PF** – Uma conta pode ser PJ ou PF, mas não pode ter as duas informações;  
2. **Pagamento** – Pode ter cadastrado mais de uma forma de pagamento;  
3. **Entrega** – Possui status e código de rastreio.  

---

## 🛠️ Método Utilizado

1. Criei uma **estrutura booleana** para que, no momento do cadastro, seja selecionado o tipo de pessoa que será registrado (PF ou PJ).  
2. Criei uma **tabela específica para armazenar as formas de pagamento**, garantindo que não ocorra duplicidade no cadastro do cliente, já que ele pode ter mais de um meio de pagamento.  
3. Criei uma **tabela específica para armazenar as informações da entrega**, visto que a confirmação será registrada após a alteração do status da venda.  

---
