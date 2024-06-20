-- Comando para rodar script no terminal:
-- mysql -uroot -p gestao_onibus < {path}/create-gestao_onibus.sql
-- mysql -uroot -p gestao_onibus < "C:\Users\Milena\taniomis_repos\UTFPR\Banco-de-Dados\create-gestao_onibus.sql"

-- CRIANDO BASE DE DADOS --
DROP DATABASE IF EXISTS gestao_onibus;
CREATE DATABASE gestao_onibus;
USE gestao_onibus;


-- CRIANDO TABELAS --
DROP TABLE IF EXISTS compra_passagem;
DROP TABLE IF EXISTS passageiros;
DROP TABLE IF EXISTS pontos_onibus;
DROP TABLE IF EXISTS pontos_rota;
DROP TABLE IF EXISTS rotas;
DROP TABLE IF EXISTS viagens;
DROP TABLE IF EXISTS onibus;

CREATE TABLE compra_passagem (
ID INT PRIMARY KEY AUTO_INCREMENT,
NumCartao INT NOT NULL,
PontoID INT NOT NULL,
Datetime DATETIME NOT NULL);

CREATE TABLE passageiros (
NumCartao INT PRIMARY KEY,
CPF CHAR(11) NOT NULL);

CREATE TABLE pontos_onibus (
ID INT PRIMARY KEY,
Nome VARCHAR(70) NOT NULL,
Latitude FLOAT NOT NULL,
Longitude FLOAT NOT NULL);

CREATE TABLE pontos_rota (
PontoID INT NOT NULL,
RotaID INT NOT NULL,
Ordem TINYINT NOT NULL);

CREATE TABLE rotas (
ID INT PRIMARY KEY,
Nome VARCHAR(70) NOT NULL UNIQUE);

CREATE TABLE viagens (
ID INT PRIMARY KEY AUTO_INCREMENT,
OnibusPlaca VARCHAR(8) NOT NULL,
RotaID INT NOT NULL,
Inicio DATETIME NOT NULL,
Final DATETIME NOT NULL);

CREATE TABLE onibus (
Placa VARCHAR(8) PRIMARY KEY);

ALTER TABLE compra_passagem ADD CONSTRAINT compra_passagem_NumCartao_passageiros_NumCartao FOREIGN KEY (NumCartao) REFERENCES passageiros(NumCartao);
ALTER TABLE compra_passagem ADD CONSTRAINT compra_passagem_PontoID_pontos_onibus_ID FOREIGN KEY (PontoID) REFERENCES pontos_onibus(ID);
ALTER TABLE pontos_rota ADD CONSTRAINT pontos_rota_PontoID_pontos_onibus_ID FOREIGN KEY (PontoID) REFERENCES pontos_onibus(ID);
ALTER TABLE pontos_rota ADD CONSTRAINT pontos_rota_RotaID_rotas_ID FOREIGN KEY (RotaID) REFERENCES rotas(ID);
ALTER TABLE viagens ADD CONSTRAINT viagens_OnibusPlaca_onibus_Placa FOREIGN KEY (OnibusPlaca) REFERENCES onibus(Placa);
ALTER TABLE viagens ADD CONSTRAINT viagens_RotaID_rotas_ID FOREIGN KEY (RotaID) REFERENCES rotas(ID);