-- Comando para rodar script no terminal:
-- mysql -uroot -p gestao_onibus < {path}/create-gestao_onibus.sql
-- mysql -uroot -p gestao_onibus < "C:\Users\Milena\taniomis_repos\UTFPR\Banco-de-Dados\create-gestao_onibus.sql"

-- CRIANDO BASE DE DADOS --
CREATE DATABASE IF NOT EXISTS gestao_onibus;
USE gestao_onibus;


-- CRIANDO TABELAS --
DROP TABLE IF EXISTS COMPRA_PASSAGEM;
DROP TABLE IF EXISTS PASSAGEIROS;
DROP TABLE IF EXISTS PONTOS_ONIBUS;
DROP TABLE IF EXISTS PONTOS_ROTA;
DROP TABLE IF EXISTS ROTAS;
DROP TABLE IF EXISTS VIAGENS;
DROP TABLE IF EXISTS ONIBUS;

CREATE TABLE COMPRA_PASSAGEM (
ID INT PRIMARY KEY AUTO_INCREMENT,
NumCartao INT NOT NULL,
PontoID INT NOT NULL,
Datetime DATETIME NOT NULL);

CREATE TABLE PASSAGEIROS (
NumCartao INT PRIMARY KEY,
CPF CHAR(11) NOT NULL);

CREATE TABLE PONTOS_ONIBUS (
ID INT PRIMARY KEY,
Nome VARCHAR(70) NOT NULL,
Latitude FLOAT NOT NULL,
Longitude FLOAT NOT NULL);

CREATE TABLE PONTOS_ROTA (
PontoID INT NOT NULL,
RotaID INT NOT NULL,
Ordem TINYINT NOT NULL);

CREATE TABLE ROTAS (
ID INT PRIMARY KEY,
Nome VARCHAR(70) NOT NULL UNIQUE);

CREATE TABLE VIAGENS (
ID INT PRIMARY KEY AUTO_INCREMENT,
OnibusPlaca VARCHAR(8) NOT NULL,
RotaID INT NOT NULL,
Inicio DATETIME NOT NULL,
Final DATETIME NOT NULL);

CREATE TABLE ONIBUS (
Placa VARCHAR(8) PRIMARY KEY);

ALTER TABLE COMPRA_PASSAGEM ADD CONSTRAINT COMPRA_PASSAGEM_NumCartao_PASSAGEIROS_NumCartao FOREIGN KEY (NumCartao) REFERENCES PASSAGEIROS(NumCartao);
ALTER TABLE COMPRA_PASSAGEM ADD CONSTRAINT COMPRA_PASSAGEM_PontoID_PONTOS_ONIBUS_ID FOREIGN KEY (PontoID) REFERENCES PONTOS_ONIBUS(ID);
ALTER TABLE PONTOS_ROTA ADD CONSTRAINT PONTOS_ROTA_PontoID_PONTOS_ONIBUS_ID FOREIGN KEY (PontoID) REFERENCES PONTOS_ONIBUS(ID);
ALTER TABLE PONTOS_ROTA ADD CONSTRAINT PONTOS_ROTA_RotaID_ROTAS_ID FOREIGN KEY (RotaID) REFERENCES ROTAS(ID);
ALTER TABLE VIAGENS ADD CONSTRAINT VIAGENS_OnibusPlaca_ONIBUS_Placa FOREIGN KEY (OnibusPlaca) REFERENCES ONIBUS(Placa);
ALTER TABLE VIAGENS ADD CONSTRAINT VIAGENS_RotaID_ROTAS_ID FOREIGN KEY (RotaID) REFERENCES ROTAS(ID);