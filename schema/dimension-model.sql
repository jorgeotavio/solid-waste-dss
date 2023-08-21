-- Tabelas de Dimensão
CREATE TABLE dim_entidades_geradoras (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cnpj VARCHAR(18) NOT NULL,
    razao_social VARCHAR(200) NOT NULL
);

CREATE TABLE dim_entidades_destinadoras (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cnpj VARCHAR(18) NOT NULL,
    razao_social VARCHAR(200) NOT NULL,
    municipio VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL
);

CREATE TABLE dim_categorias_geradoras (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200) NOT NULL
);

CREATE TABLE dim_residuos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(200) NOT NULL
);

CREATE TABLE dim_tipo_destinacao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_destinacao VARCHAR(200) NOT NULL
);

CREATE TABLE dim_ano (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ano VARCHAR(4) NOT NULL
);

-- Tabela de Fatos
CREATE TABLE fat_destinacoes (
    entidades_geradoras_id INT NOT NULL,
    entidades_destinadoras_id INT NOT NULL,
    locais_id INT NOT NULL,
    residuos_id INT NOT NULL,
    categorias_geradoras_id INT NOT NULL,
    tipo_destinacao_id INT NOT NULL,
    ano_id INT NOT NULL,
    quantidade_destinada DECIMAL(18, 2) NOT NULL,
    unidade_medida VARCHAR(50) NOT NULL,
    situacao_cadastral VARCHAR(100) NOT NULL,
    PRIMARY KEY (entidades_geradoras_id, entidades_destinadoras_id, residuos_id, categorias_geradoras_id, tipo_destinacao_id, ano_id),
    FOREIGN KEY (entidades_geradoras_id) REFERENCES dim_entidades_geradoras (id),
    FOREIGN KEY (entidades_destinadoras_id) REFERENCES dim_entidades_destinadoras (id),
    FOREIGN KEY (residuos_id) REFERENCES dim_residuos (id),
    FOREIGN KEY (categorias_geradoras_id) REFERENCES dim_categorias_geradoras (id),
    FOREIGN KEY (tipo_destinacao_id) REFERENCES dim_tipo_destinacao (id),
    FOREIGN KEY (ano_id) REFERENCES dim_ano (id)
);
