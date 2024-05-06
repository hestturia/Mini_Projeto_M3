CREATE TABLE Vacina (
  id_vacina int PRIMARY KEY AUTO_INCREMENT,
  nome varchar(255),
  descricao text,
  idade_minima int,
  idade_maxima int
);

CREATE TABLE Calendario (
  id_calendario int PRIMARY KEY AUTO_INCREMENT,
  faixa_etaria varchar(255),
  data_recomendada date,
  vacina_obrigatoria boolean
);

CREATE TABLE Posto_Saude (
  id_posto int PRIMARY KEY AUTO_INCREMENT,
  nome varchar(255),
  endereco varchar(255),
  telefone varchar(20),
  horario_funcionamento varchar(255)
);

CREATE TABLE Vacina_Calendario (
  id_vacina int,
  id_calendario int,
  PRIMARY KEY (id_vacina, id_calendario)
);

CREATE TABLE Vacina_Posto (
  id_vacina int,
  id_posto int,
  PRIMARY KEY (id_vacina, id_posto)
);

CREATE TABLE Usuario (
  id_usuario int PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(255),
  email VARCHAR(255),
  senha VARCHAR(255),
  idade VARCHAR(255)
);

CREATE TABLE Usuario_Vacina (
  id_usuario INT,
  id_vacina INT,
  PRIMARY KEY (id_usuario, id_vacina)
);

CREATE TABLE Usuario_Calendario (
  id_usuario INT,
  id_calendario INT,
  PRIMARY KEY (id_usuario, id_calendario)
);

ALTER TABLE Vacina_Calendario ADD FOREIGN KEY (id_vacina) REFERENCES Vacina (id_vacina);

ALTER TABLE Vacina_Calendario ADD FOREIGN KEY (id_calendario) REFERENCES Calendario (id_calendario);

ALTER TABLE Vacina_Posto ADD FOREIGN KEY (id_vacina) REFERENCES Vacina (id_vacina);

ALTER TABLE Vacina_Posto ADD FOREIGN KEY (id_posto) REFERENCES Posto_Saude (id_posto);

ALTER TABLE Usuario_Vacina ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario);

ALTER TABLE Usuario_Vacina ADD FOREIGN KEY (id_vacina) REFERENCES Vacina (id_vacina);

ALTER TABLE Usuario_Calendario ADD FOREIGN KEY (id_usuario) REFERENCES Usuario (id_usuario);

ALTER TABLE Usuario_Calendario ADD FOREIGN KEY (id_calendario) REFERENCES Calendario (id_calendario);