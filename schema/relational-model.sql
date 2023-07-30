CREATE TABLE entidades (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cnpj VARCHAR(18) NOT NULL,
    razao_social VARCHAR(200) NOT NULL
);

CREATE TABLE locais (
    id INT AUTO_INCREMENT PRIMARY KEY,
    municipio VARCHAR(100) NOT NULL,
    estado VARCHAR(100) NOT NULL
);

CREATE TABLE categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(200) NOT NULL
);

CREATE TABLE detalhes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    detalhe VARCHAR(200) NOT NULL
);

CREATE TABLE residuos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(200) NOT NULL
);

CREATE TABLE destinacoes (
    id INT AUTO_INCREMENT PRIMARY KEY,
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
    FOREIGN KEY (entidades_destinador_id) REFERENCES entidades (id),
    FOREIGN KEY (entidades_gerador_id) REFERENCES entidades (id),
    FOREIGN KEY (locais_id) REFERENCES locais (id),
    FOREIGN KEY (detalhes_id) REFERENCES detalhes (id),
    FOREIGN KEY (residuos_id) REFERENCES residuos (id),
    FOREIGN KEY (categorias_id) REFERENCES categorias (id)
);
