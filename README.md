# Sistema de Gestão de Pontos de Ônibus e Passageiros
Uma cidade grande deseja implementar um sistema de gestão para monitorar os pontos de ônibus e os passageiros que utilizam o transporte público. O objetivo é acompanhar a utilização dos ônibus e otimizar as rotas e os horários.


## Contexto
Cada ponto de ônibus na cidade possui um identificador único, um nome (ou descrição), e uma localização (latitude e longitude). Esses pontos estão distribuídos por diversas rotas de ônibus. Cada rota tem um identificador único, um número, e uma descrição.

Os ônibus fazem várias viagens ao longo do dia. Cada viagem tem um identificador único, um ônibus associado (identificado por uma placa), um motorista (identificado por um CPF), e a rota que ele segue. Além disso, cada viagem tem um horário de início e um horário de término.

Os passageiros utilizam um cartão de transporte para passar pelas catracas nos pontos de ônibus. Cada passageiro possui um número de cartão, nome, e CPF. A passagem pela catraca deve registrar o número do cartão do passageiro, o ponto de ônibus onde ele passou, e a data e hora da passagem.

O sistema deve servir para realizar várias consultas:

- Listar todos os pontos de ônibus de uma determinada rota.
- Identificar todas as viagens de ônibus realizadas por um determinado motorista.
- Verificar todas as passagens registradas em um ponto de ônibus em um intervalo de tempo.
- Contar o número de passageiros que passaram por cada ponto de ônibus em um dia específico.
- Encontrar todos os pontos de ônibus que um determinado passageiro utilizou.


## Tabelas do Banco de Dados
1. Pontos_de_Onibus
ID (chave primária)
Nome
Latitude
Longitude

2. Rotas
ID (chave primária)
Numero
Descrição

3. Viagens
ID (chave primária)
Placa_Onibus
CPF_Motorista
ID_Rota (chave estrangeira para Rotas)
Horario_Inicio
Horario_Termino

4. Passageiros
Numero_Cartao (chave primária)
Nome
CPF

5. Passagens_Catraca
ID (chave primária)
Numero_Cartao (chave estrangeira para Passageiros)
ID_Ponto (chave estrangeira para Pontos_de_Onibus)
Data_Hora_Passagem


## Tarefas dos Alunos

1. Modelo Entidade-Relacionamento (ER)
Criar o modelo ER para o contexto descrito.

2. Diagrama em IDF1X
Desenvolver o diagrama do banco de dados utilizando a notação IDF1X.

3. Script de Criação das Tabelas
Escrever o script SQL para criar as tabelas no MySQL, incluindo as restrições de chave primária e estrangeira.

4. Script de População das Tabelas
Escrever o script SQL para inserir dados nas tabelas. Inclua ao menos 10 pontos de ônibus, 5 rotas, 5 viagens, 5 passageiros e registros de passagens correspondentes.