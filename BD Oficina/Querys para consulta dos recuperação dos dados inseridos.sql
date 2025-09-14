use os_oficina_desafio;

-- Relatório de Relação de serviços realizados por mecânico
SELECT 
    em.Nome AS 'Mecânico',
    em.Especialidade,
    o.Servico AS 'Serviço',
    o.Tipo_de_servico AS 'Tipo de Serviço',
    o.Descricao AS 'Descrição',
    o.Data_orcamento AS 'Data do orçamento',
    o.Valor,
    c.Nome AS Cliente
FROM 
    Equipe_de_mecanico em
    JOIN Equipe_mecanica_para_avaliacao_do_orcamento ema ON em.idEquipe_de_mecanico = ema.Equipe_de_mecanico_idEquipe_de_mecanico
    JOIN Orcamento o ON ema.Orcamento_idPedido = o.idPedido
    JOIN Cliente c ON o.Cliente_idCliente = c.idCliente
ORDER BY em.Nome, o.Data_orcamento;


-- Relatório de Peças utilizadas nas ordens de serviço
SELECT 
    os.idOrdem_de_Servico as 'Ordem de Serviço',
    os.Status_da_OS as 'Status de Serviço',
    p.Identificacao as 'Produto',
    p.Descricao as 'Descrição',
    p.Categoria,
    p.Tipo,
    pp.Quantidade_OS
FROM 
    Pecas p
    JOIN Pecas_para_OS pp ON p.idPecas = pp.Pecas_idPecas
    JOIN Ordem_de_Servico os ON pp.Ordem_de_Servico_idOrdem_de_Servico = os.idOrdem_de_Servico
ORDER BY pp.Quantidade_OS desc;



-- Relatório com dados dos clientes

SELECT 
    c.Nome,
    c.Documento,
    c.Tipo_documento AS 'Tipo de documento',
    c.Endereco AS 'Endereço',
    c.Contato,
    c.Data_nascimento AS 'Data de nascimento',
    v.Marca,
    v.Modelo,
    v.Ano_Modelo AS 'Ano/Modelo',
    v.Tipo_de_combustivel AS 'Tipo de combustível',
    CASE 
        WHEN v.Eletrico = 1 THEN 'Sim'
        ELSE 'Não'
    END AS 'Elétrico?',
    v.Kilometragem
FROM 
    Cliente c
    LEFT JOIN Veiculos v ON v.Cliente_idCliente = c.idCliente
ORDER BY c.Nome, v.Modelo;



-- Relatório de Relação de Veículos do Cliente com Serviços

SELECT 
    c.Nome AS Cliente,
    v.Marca,
    v.Modelo,
    v.Ano_Modelo AS 'Ano/Modelo',
    o.Servico AS 'Serviço',
    o.Tipo_de_servico AS 'Tipo de serviço',
    o.Data_orcamento AS 'Data do orçamento',
    o.Valor
FROM 
    Cliente c
    JOIN Veiculos v ON c.idCliente = v.Cliente_idCliente
    LEFT JOIN Orcamento o ON o.Cliente_idCliente = c.idCliente
ORDER BY c.Nome, v.Modelo;


