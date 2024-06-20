# Sistema de Gestão de Pontos de Ônibus e Passageiros
Uma cidade grande deseja implementar um sistema de gestão para monitorar os pontos de ônibus e os passageiros que utilizam o transporte público. O objetivo é acompanhar a utilização dos ônibus e otimizar as rotas e os horários.


## Contexto
Cada ponto de ônibus na cidade possui um identificador único, um nome (ou descrição), e uma localização (latitude e longitude). Esses pontos estão distribuídos por diversas rotas de ônibus. Cada rota tem um identificador único, um número, e uma descrição.

Os ônibus fazem várias viagens ao longo do dia. Cada viagem tem um identificador único, um ônibus associado (identificado por uma placa) e a rota que ele segue. Além disso, cada viagem tem um horário de início e um horário de término.

Os passageiros utilizam um cartão de transporte para passar pelas catracas nos pontos de ônibus. Cada passageiro possui um número de cartão, nome, e CPF. A passagem pela catraca deve registrar o número do cartão do passageiro, o ponto de ônibus onde ele passou, e a data e hora da passagem.

O sistema deve servir para realizar várias consultas:

- Listar todos os pontos de ônibus de uma determinada rota.
- Verificar todas as passagens registradas em um ponto de ônibus em um intervalo de tempo.
- Contar o número de passageiros que passaram por cada ponto de ônibus em um dia específico.
- Encontrar todos os pontos de ônibus que um determinado passageiro utilizou.


## Tarefas dos Alunos

1. Modelo Entidade-Relacionamento (ER)
Criar o modelo ER para o contexto descrito.

2. Diagrama em IDF1X
Desenvolver o diagrama do banco de dados utilizando a notação IDF1X.

3. Script de Criação das Tabelas
Escrever o script SQL para criar as tabelas no MySQL, incluindo as restrições de chave primária e estrangeira.

4. Script de População das Tabelas
Escrever o script SQL para inserir dados nas tabelas. Inclua ao menos 10 pontos de ônibus, 5 rotas, 5 viagens, 5 passageiros e registros de passagens correspondentes.


## Considerações Adicionais
- Índices: Pode ser útil criar índices em colunas frequentemente utilizadas em junções ou em condições de busca, como ID_Ponto em Passagens_Catraca, para melhorar o desempenho das consultas.

- Normalização: A estrutura das tabelas segue princípios básicos de normalização para evitar redundância e garantir a consistência dos dados.