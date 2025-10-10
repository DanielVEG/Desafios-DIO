# 🧑🏼‍💻 Desafio DIO - Criando um Dashboard corporativo com integração com MySQL e Azure

## 🎯 Objetivo

O objetivo deste desafio é criar uma **limpeza de base** com foco exercitar as habilidades de ETL. Além de realizar a integração dos dados conectando o banco de dados no Server SQL ao Azure e realizando o ponteamento do Azure ao Power BI.  

---

## 🗄️ Base de Dados

Para este projeto, utilizei dados fictícios inserido no banco de dados azure_company que simulando um banco de cadastro de RH. As principais tabelas são:

- **Departament**
- **Dependent**
- **Dept Locations** 	 
- **Employee** 	
- **Project**	 
- **Works_On**

---

## 📊 Visualização dos dados transformados

No arquivo, Configuração de informações ETL para Power BI.pbix, você acessa as transformações feitas para a utilização em um dashboard. Basta acessar e ir em transformação de dados para visualizar as tabelas tratadas.

Alterações feitas:

1.	Verifique os cabeçalhos e tipos de dados
2.	Modifique os valores monetários para o tipo double preciso
3.	Verifique a existência dos nulos e analise a remoção
4.	Os employees com nulos em Super_ssn podem ser os gerentes. Verifique se há algum colaborador sem gerente
5.	Verifique se há algum departamento sem gerente
6.	Se houver departamento sem gerente, suponha que você possui os dados e preencha as lacunas
7.	Verifique o número de horas dos projetos
8.	Separar colunas complexas
9.	Mesclar consultas employee e departament para criar uma tabela employee com o nome dos departamentos associados aos colaboradores. A mescla terá como base a tabela employee. Fique atento, essa informação influencia no tipo de junção
10.	Neste processo elimine as colunas desnecessárias. 
11.	Realize a junção dos colaboradores e respectivos nomes dos gerente . Isso pode ser feito com consulta SQL ou pela mescla de tabelas com Power BI. Caso utilize SQL, especifique no README a query utilizada no processo.
12.	Mescle as colunas de Nome e Sobrenome para ter apenas uma coluna definindo os nomes dos colaboradores
13.	Mescle os nomes de departamentos e localização. Isso fará que cada combinação departamento-local seja único. Isso irá auxiliar na criação do modelo estrela em um módulo futuro.
14.	Explique por que, neste caso supracitado, podemos apenas utilizar o mesclar e não o atribuir. 
Resposta:
O objetivo em combinar informações de duas colunas em uma só, e realizar a união dessas informações de forma organizada e ordernada, e não atribuir valores derivados.
Ao atribuir, não se cria uma chave composta — ele apenas altera ou adiciona valores com base em expressões.

15.	Agrupe os dados a fim de saber quantos colaboradores existem por gerente
16.	Elimine as colunas desnecessárias, que não serão usadas no relatório, de cada tabela


---

## 🔧 Tecnologias Utilizadas

- Power BI
- Manipulação e análise de dados
- Visualização interativa de gráficos

---
