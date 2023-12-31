-- Inserção de dados na tabela dim_entidades
INSERT INTO dim_entidades (id, cnpj, razao_social)
VALUES
    (1, '00.002.327/0001-00', 'A.C. LIMA COLETA E RECICLAGEM DE RESÍDUOS LTDA - ME'),
    (2, '53.309.845/0001-20', 'PRODUTOS ALIM ORLANDIA S A COM E IND'),
    (3, '49.213.747/0115-85', 'RAÌZEN CENTRO SUL PAULISTA S.A - UNIDADE MB'),
    (4, '60.872.306/0040-76', 'SHERWIN WILLIAMS BRASIL IND. E COM. LTDA'),
    (5, '60.586.450/0001-30', 'B. GROB DO BRASIL S.A.');

-- Inserção de dados na tabela dim_locais
INSERT INTO dim_locais (id, municipio, estado)
VALUES
    (1, 'MORRO AGUDO', 'SAO PAULO'),
    (2, 'ORLANDIA', 'SAO PAULO'),
    (3, 'GUARULHOS', 'SAO PAULO'),
    (4, 'SÃO PAULO', 'SAO PAULO'),
    (5, 'RIO DE JANEIRO', 'RIO DE JANEIRO');

-- Inserção de dados na tabela dim_categorias
INSERT INTO dim_categorias (id, descricao)
VALUES
    (1, 'Serviços de Utilidade'),
    (2, 'Indústria de Couros e Peles'),
    (3, 'Indústria de Madeira'),
    (4, 'Indústria de Borracha'),
    (5, 'Materiais e Produtos');

-- Inserção de dados na tabela dim_residuos
INSERT INTO dim_residuos (id, descricao)
VALUES
    (1, 'Reciclagem/reaproveitamento de outros materiais inorgânicos'),
    (2, 'Reciclagem/reaproveitamento de metais e compostos metálicos'),
    (3, 'Reciclagem/reaproveitamento de substâncias orgânicas que não sejam usadas como solventes'),
    (4, 'Aproveitamento de sobras ou resíduos resultantes de processos industriais'),
    (5, 'Tratamento e destinação de resíduos industriais líquidos e sólidos');

-- Inserção de dados na tabela dim_ano
INSERT INTO dim_ano (id, ano)
VALUES
    (1, 2013),
    (2, 2014),
    (3, 2015),
    (4, 2016),
    (5, 2017);

-- Inserção de dados na tabela fat_destinacoes
INSERT INTO fat_destinacoes (entidades_destinador_id, entidades_gerador_id, quantidade_destinada, unidade_medida, locais_id, detalhes_id, residuos_id, categorias_id, tipo, ano_id, situacao_cadastral)
VALUES
    (1, 2, 100.50, 'Kg', 1, 1, 2, 2, 'Tipo A', 1, 'Ativo'),
    (3, 4, 250.75, 'Kg', 2, 2, 3, 5, 'Tipo B', 2, 'Ativo'),
    (5, 1, 180.25, 'Kg', 3, 3, 4, 2, 'Tipo C', 3, 'Inativo'),
    (2, 3, 500.00, 'Kg', 4, 4, 5, 3, 'Tipo D', 4, 'Ativo'),
    (4, 5, 300.35, 'Kg', 5, 5, 1, 4, 'Tipo E', 5, 'Inativo'),
    (1, 2, 70.20, 'Kg', 1, 1, 2, 1, 'Tipo A', 3, 'Ativo'),
    (3, 4, 180.80, 'Kg', 2, 2, 3, 2, 'Tipo B', 4, 'Ativo'),
    (5, 1, 230.40, 'Kg', 3, 3, 4, 3, 'Tipo C', 2, 'Inativo'),
    (2, 3, 410.10, 'Kg', 4, 4, 5, 4, 'Tipo D', 5, 'Ativo'),
    (4, 5, 290.60, 'Kg', 5, 5, 1, 5, 'Tipo E', 1, 'Inativo');
