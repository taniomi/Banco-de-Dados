INSERT INTO passageiros (NumCartao, CPF)
VALUES
    (1357901, '12345678901'),
    (2468012, '23456789012'),
    (3579123, '34567890123'),
    (4680234, '45678901234'),
    (5791345, '56789012345'),
    (6802456, '67890123456'),
    (7913567, '78901234567'),
    (8024678, '89012345678'),
    (9135789, '90123456789'),
    (9753109, '98765432109');

INSERT INTO pontos_onibus (ID, Nome, Latitude, Longitude)
VALUES
    (1, 'Ponto A', 40.7128, -74.0060),
    (2, 'Ponto B', 34.0522, -118.2437),
    (3, 'Ponto C', 51.5074, -0.1278),
    (4, 'Ponto D', -22.9068, -43.1729),
    (5, 'Ponto E', 48.8566, 2.3522),
    (6, 'Ponto F', 35.6895, 139.6917),
    (7, 'Ponto G', -33.8688, 151.2093),
    (8, 'Ponto H', 55.7558, 37.6176),
    (9, 'Ponto I', 40.7306, -73.9352),
    (10, 'Ponto J', -33.9249, 18.4241);

INSERT INTO rotas (ID, Nome)
VALUES
    (1, 'Rota A'),
    (2, 'Rota B'),
    (3, 'Rota C'),
    (4, 'Rota D'),
    (5, 'Rota E'),
    (6, 'Rota F'),
    (7, 'Rota G'),
    (8, 'Rota H'),
    (9, 'Rota I'),
    (10, 'Rota J');

INSERT INTO onibus (Placa)
VALUES
    ('ATJ7G88'),
    ('RFS9D98'),
    ('DAZ8934'),
    ('SIP7A69'),
    ('ACT5300'),
    ('AVG8J01'),
    ('GGL2I53'),
    ('REV5F92'),
    ('RXM3B08'),
    ('BBK1B17');


INSERT INTO compra_passagem (NumCartao, PontoID, Datetime)
VALUES
    (1357901, 1, '2024-01-01 08:00:00'),
    (2468012, 2, '2024-01-02 09:30:00'),
    (3579123, 3, '2024-01-03 10:45:00'),
    (4680234, 4, '2024-01-04 11:00:00'),
    (5791345, 5, '2024-01-05 12:15:00'),
    (6802456, 6, '2024-01-06 13:30:00'),
    (7913567, 7, '2024-01-07 14:45:00'),
    (8024678, 8, '2024-01-08 15:00:00'),
    (9135789, 9, '2024-01-09 16:15:00'),
    (9753109, 10, '2024-01-10 17:30:00'),
    (1357901, 3, '2024-01-11 08:30:00'),
    (2468012, 5, '2024-01-12 09:45:00'),
    (3579123, 7, '2024-01-13 10:00:00'),
    (4680234, 9, '2024-01-14 11:15:00'),
    (5791345, 2, '2024-01-15 12:30:00');

INSERT INTO pontos_rota (PontoID, RotaID, Ordem)
VALUES
    -- Rota A
    (1, 1, 1),
    (2, 1, 2),
    (3, 1, 3),
    -- Rota B
    (4, 2, 1),
    (5, 2, 2),
    (6, 2, 3),
    (7, 2, 4),
    -- Rota C
    (8, 3, 1),
    (9, 3, 2),
    (10, 3, 3),
    -- Rota D
    (1, 4, 1),
    (5, 4, 2),
    (9, 4, 3),
    -- Rota E
    (2, 5, 1),
    (6, 5, 2),
    (10, 5, 3),
    (3, 5, 4),
    -- Rota F
    (4, 6, 1),
    (8, 6, 2),
    (7, 6, 3),
    (1, 6, 4),
    -- Rota G
    (3, 7, 1),
    (5, 7, 2),
    (6, 7, 3),
    (2, 7, 4),
    -- Rota H
    (7, 8, 1),
    (9, 8, 2),
    (4, 8, 3),
    -- Rota I
    (10, 9, 1),
    (1, 9, 2),
    (8, 9, 3),
    -- Rota J
    (2, 10, 1),
    (3, 10, 2),
    (6, 10, 3),
    (5, 10, 4);

INSERT INTO viagens (OnibusPlaca, RotaID, Inicio, Final)
VALUES
    ('ACT5300', 1, '2024-01-01 08:00:00', '2024-01-01 12:00:00'),
    ('ATJ7G88', 2, '2024-01-02 09:00:00', '2024-01-02 13:00:00'),
    ('AVG8J01', 3, '2024-01-03 10:00:00', '2024-01-03 14:00:00'),
    ('BBK1B17', 4, '2024-01-04 11:00:00', '2024-01-04 15:00:00'),
    ('DAZ8934', 5, '2024-01-05 12:00:00', '2024-01-05 16:00:00'),
    ('GGL2I53', 6, '2024-01-06 13:00:00', '2024-01-06 17:00:00'),
    ('REV5F92', 7, '2024-01-07 14:00:00', '2024-01-07 18:00:00'),
    ('RFS9D98', 8, '2024-01-08 15:00:00', '2024-01-08 19:00:00'),
    ('RXM3B08', 9, '2024-01-09 16:00:00', '2024-01-09 20:00:00'),
    ('SIP7A69', 10, '2024-01-10 17:00:00', '2024-01-10 21:00:00'),
    ('ACT5300', 1, '2024-01-11 08:00:00', '2024-01-11 12:00:00'),
    ('ATJ7G88', 2, '2024-01-12 09:00:00', '2024-01-12 13:00:00'),
    ('AVG8J01', 3, '2024-01-13 10:00:00', '2024-01-13 14:00:00'),
    ('BBK1B17', 4, '2024-01-14 11:00:00', '2024-01-14 15:00:00'),
    ('DAZ8934', 5, '2024-01-15 12:00:00', '2024-01-15 16:00:00');