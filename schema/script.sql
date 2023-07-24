CREATE TABLE dim_tempo (
    ano_destinacao INT NOT NULL,
    PRIMARY KEY (ano_destinacao)
);

CREATE TABLE dim_localizacao (
    estado VARCHAR(50) NOT NULL,
    municipio VARCHAR(100) NOT NULL,
    PRIMARY KEY (estado, municipio)
);

CREATE TABLE dim_entidade (
    cnpj_entidade VARCHAR(18) NOT NULL,
    razao_social_entidade VARCHAR(200) NOT NULL,
    tipo_entidade ENUM('Gerador', 'Destinador') NOT NULL,
    PRIMARY KEY (cnpj_entidade)
);

CREATE TABLE dim_categoria_atividade (
    codigo_categoria INT NOT NULL,
    categoria_atividade VARCHAR(200) NOT NULL,
    PRIMARY KEY (codigo_categoria)
);

CREATE TABLE dim_tipo_destinacao (
    tipo_destinacao VARCHAR(100) NOT NULL,
    PRIMARY KEY (tipo_destinacao)
);

CREATE TABLE residuos_fato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ano_destinacao INT NOT NULL,
    cnpj_entidade VARCHAR(18) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    municipio VARCHAR(100) NOT NULL,
    codigo_categoria INT NOT NULL,
    quantidade_destinada DECIMAL(18, 2) NOT NULL,
    tipo_destinacao VARCHAR(100) NOT NULL,
    FOREIGN KEY (ano_destinacao) REFERENCES dim_tempo (ano_destinacao),
    FOREIGN KEY (estado, municipio) REFERENCES dim_localizacao (estado, municipio),
    FOREIGN KEY (cnpj_entidade) REFERENCES dim_entidade (cnpj_entidade),
    FOREIGN KEY (codigo_categoria) REFERENCES dim_categoria_atividade (codigo_categoria),
    FOREIGN KEY (tipo_destinacao) REFERENCES dim_tipo_destinacao (tipo_destinacao)
);
