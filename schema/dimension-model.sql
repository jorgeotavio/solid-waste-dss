-- Tabelas de Dimensão
CREATE TABLE dim_entidades (
    id INT PRIMARY KEY,
    cnpj VARCHAR(18) NOT NULL,
    razao_social VARCHAR(200) NOT NULL
);

CREATE TABLE dim_locais (
    id INT PRIMARY KEY,
    municipio VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL
);

CREATE TABLE dim_categorias (
    id INT PRIMARY KEY,
    descricao VARCHAR(200) NOT NULL
);

CREATE TABLE dim_detalhes (
    id INT PRIMARY KEY,
    detalhe VARCHAR(200) NOT NULL
);

CREATE TABLE dim_residuos (
    id INT PRIMARY KEY,
    descricao VARCHAR(200) NOT NULL
);

-- Tabela de Fatos
CREATE TABLE fat_destinacoes (
    entidades_destinador_id INT NOT NULL,
    entidades_gerador_id INT NOT NULL,
    quantidade_destinada DECIMAL(18, 2) NOT NULL,
    unidade_medida VARCHAR(50) NOT NULL,
    locais_id INT NOT NULL,
    detalhes_id INT NOT NULL,
    residuos_id INT NOT NULL,
    categorias_id INT NOT NULL,
    tipo VARCHAR(100) NOT NULL,
    ano INT NOT NULL,
    situacao_cadastral VARCHAR(100) NOT NULL,
    PRIMARY KEY (entidades_destinador_id, entidades_gerador_id, locais_id, detalhes_id, residuos_id, categorias_id, tipo, ano),
    FOREIGN KEY (entidades_destinador_id) REFERENCES dim_entidades (id),
    FOREIGN KEY (entidades_gerador_id) REFERENCES dim_entidades (id),
    FOREIGN KEY (locais_id) REFERENCES dim_locais (id),
    FOREIGN KEY (detalhes_id) REFERENCES dim_detalhes (id),
    FOREIGN KEY (residuos_id) REFERENCES dim_residuos (id),
    FOREIGN KEY (categorias_id) REFERENCES dim_categorias (id)
);

