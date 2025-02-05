CREATE TABLE cliente (
id_cliente INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50),
email VARCHAR(50),
senha VARCHAR(10),
telefone INT
);

CREATE TABLE home_hospedagem (
id_hospedagem INT PRIMARY KEY AUTO_INCREMENT,
nome_hotel VARCHAR(50),
cidade VARCHAR(30),
preco DECIMAL(10,2)
);

CREATE TABLE passagem (
id_passagem INT PRIMARY KEY AUTO_INCREMENT,
origem VARCHAR(50),
destino VARCHAR(50),
data_saida DATE,
data_chegada DATE,
preco DECIMAL(10,2)
);

CREATE TABLE oferta (
id_oferta INT PRIMARY KEY AUTO_INCREMENT,
data_inicio DATE,
data_fim DATE,
tipo_viagem VARCHAR(50),
desconto DECIMAL(10,2)
);

CREATE TABLE cruzeiro (
id_cruzeiro INT PRIMARY KEY AUTO_INCREMENT,
data_saida DATE,
origem VARCHAR(50),
destino VARCHAR(50),
data_volta DATE,
preco DECIMAL(10,2)
);

CREATE TABLE compra_hospedagem (
id_hospedagem INT,
id_cliente INT,
FOREIGN KEY(id_hospedagem) REFERENCES home_hospedagem (id_hospedagem),
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente)
);

CREATE TABLE compra_cruzeiro (
id_cruzeiro INT,
id_cliente INT,
FOREIGN KEY(id_cruzeiro) REFERENCES cruzeiro (id_cruzeiro),
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente)
);

CREATE TABLE compra_passagem (
id_passagem INT,
id_cliente INT,
FOREIGN KEY(id_passagem) REFERENCES passagem (id_passagem),
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente)
);

CREATE TABLE compra_oferta (
id_cliente INT,
id_oferta INT,
FOREIGN KEY(id_cliente) REFERENCES cliente (id_cliente),
FOREIGN KEY(id_oferta) REFERENCES oferta (id_oferta)
);
