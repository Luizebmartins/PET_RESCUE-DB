-- Inserting Data

-------------------- INSERT INTO ong --------------------
INSERT INTO ong (nome, email, tel, rua, numero, site) VALUES ('ong1', 'ong1@ong', '32132132', 'rua 1', 20, 'www.ong1.br');
INSERT INTO ong (nome, email, tel, rua, numero, site) VALUES ('ong2', 'ong2@ong', '54353454', 'rua 2', 10, 'www.ong2.br');
INSERT INTO ong (nome, email, tel, rua, numero, site) VALUES ('ong3', 'ong3@ong', '89898983', 'rua 3', 40, 'www.ong3.br');
INSERT INTO ong (nome, email, tel, rua, numero) VALUES ('ong4', 'ong4@ong', '89736243', 'rua 4', 23);
INSERT INTO ong (nome, email, tel, rua, numero) VALUES ('ong5', 'ong5@ong', '23234222', 'rua 5', 78);

-------------------- INSERT INTO clinica ------------------
INSERT INTO clinica (nome, rua, numero, hor_inicio, hor_fim) VALUES ('clinica 1', 'Rua 1', 12, '12:00', '18:00');
INSERT INTO clinica (nome, rua, numero, hor_inicio, hor_fim) VALUES ('clinica 2', 'Rua 2', 13, '12:00', '21:00');
INSERT INTO clinica (nome, rua, numero, hor_inicio, hor_fim) VALUES ('clinica 3', 'Rua 3', 14, '10:00', '22:00');
INSERT INTO clinica (nome, rua, numero, hor_inicio, hor_fim) VALUES ('clinica 4', 'Rua 4', 15, '8:00', '17:00');
INSERT INTO clinica (nome, rua, numero, hor_inicio, hor_fim) VALUES ('clinica 5', 'Rua 5', 16, '6:00', '22:00');

------------------- INSERT INTO usuario -------------------
INSERT INTO usuario (nome, senha, email, tel, t_admin) VALUES ('nome 1', 'supersecret', 'user1@email', '99999991', 'true');
INSERT INTO usuario (nome, senha, email, tel, rua, numero) VALUES ('nome 2', 'supersecret', 'user2@email', '99999992', 'rua 2', 12);
INSERT INTO usuario (nome, senha, email, tel, rua, numero) VALUES ('nome 3', 'supersecret', 'user3@email', '99999993', 'rua 3', 13);
INSERT INTO usuario (nome, senha, email, tel, rua, numero, id_clinica, t_func) VALUES ('nome 4', 'supersecret', 'user4@email', '99999994', 'rua 2', 12, 1, 'true');
INSERT INTO usuario (nome, senha, email, tel, rua, numero, id_ong, t_func) VALUES ('nome 5', 'supersecret', 'user5@email', '99999995', 'rua 4', 12, 1, 'true');

------------------- INSERT INTO abrigo -------------------
INSERT INTO abrigo (nome, capacidade, email, tel, rua, numero, id_ong) VALUES ('abrigo 1', 10, 'abrigo1@email', '88888881', 'rua 5', 10, 1);
INSERT INTO abrigo (nome, capacidade, email, tel, rua, numero, id_ong) VALUES ('abrigo 2', 12, 'abrigo2@email', '88888882', 'rua 5', 11, 2);
INSERT INTO abrigo (nome, capacidade, email, tel, rua, numero, id_ong) VALUES ('abrigo 3', 20, 'abrigo3@email', '88888883', 'rua 6', 12, 3);
INSERT INTO abrigo (nome, capacidade, email, tel, rua, numero, id_voluntario) VALUES ('abrigo 4', 2, 'abrigo4@email', '88888884', 'rua 7', 20, 2);
INSERT INTO abrigo (nome, capacidade, email, tel, rua, numero, id_voluntario) VALUES ('abrigo 5', 1, 'abrigo5@email', '88888885', 'rua 7', 10, 3);

------------------- INSERT INTO foto -------------------
INSERT INTO foto (link, id_abrigo) VALUES ('www.fotoabrigo1.com', 1);
INSERT INTO foto (link, id_abrigo) VALUES ('www.fotoabrigo2.com', 2);
INSERT INTO foto (link, id_abrigo) VALUES ('www.fotoabrigo3.com', 3);
INSERT INTO foto (link, id_abrigo) VALUES ('www.fotoabrigo4.com', 4);
INSERT INTO foto (link, id_abrigo) VALUES ('www.fotoabrigo5.com', 5);

------------------- INSERT INTO animal -------------------
INSERT INTO animal (raca, cor, nome, vacinado, castrado, id_abrigo, id_user_resg) VALUES ('dalmata', 'pelagem manchada', 'bob', 'true', 'true', 1, 2);
INSERT INTO animal (raca, cor, nome, vacinado, castrado, id_abrigo, id_user_resg) VALUES ('vira-lata', 'caramelo', 'pitoco', 'true', 'false', 1, 2);
INSERT INTO animal (raca, cor, vacinado, castrado, id_abrigo, id_user_resg) VALUES ('vira-lata', 'preto', 'true', 'true', 5, 3);
INSERT INTO animal (raca, cor, nome, vacinado, castrado, id_abrigo, id_user_resg) VALUES ('vira-lata', 'branco', 'corki', 'false', 'false', 4, 3);
INSERT INTO animal (raca, cor, nome, vacinado, castrado, id_abrigo, id_user_resg) VALUES ('vira-lata', 'caramelo', 'sett', 'true', 'true', 4, 3);

------------------- INSERT INTO medicamento -------------------
INSERT INTO medicamento (nome, valor) VALUES ('medicamento 1', 10);
INSERT INTO medicamento (nome, valor) VALUES ('medicamento 2', 10.50);
INSERT INTO medicamento (nome, valor) VALUES ('medicamento 3', 20);
INSERT INTO medicamento (nome, valor) VALUES ('medicamento 4', 30.90);
INSERT INTO medicamento (nome, valor) VALUES ('medicamento 5', 40);

------------------- INSERT INTO consulta -------------------
INSERT INTO consulta (data_consulta, hora_consulta, id_animal, id_clinica) VALUES
('2021-07-09', '13:00', 1, 1),
('2021-07-09', '14:00', 2, 1),
('2021-07-11', '13:00', 3, 1),
('2021-07-12', '09:00', 4, 4),
('2021-07-12', '7:00', 5, 5);

------------------- INSERT INTO prescricao -------------------
INSERT INTO prescricao (id_consulta, id_medicamento) VALUES
(1, 3),
(2, 1),
(3, 4),
(4, 3),
(5, 2);

------------------- INSERT INTO patrocinador -------------------
INSERT INTO patrocinador (nome, setor, id_admin) VALUES
('patrocinador 1', 'setor 1', 1),
('patrocinador 2', 'setor 1', 1),
('patrocinador 3', 'setor 2', 1),
('patrocinador 4', 'setor 3', 1),
('patrocinador 5', 'setor 3', 1);

------------------- INSERT INTO recompensa -------------------
INSERT INTO recompensa (id_patrocinador, num_sequencia, nome, preco) VALUES
(1, 1, 'recompensa 1', 10), 
(2, 1, 'recompensa 2', 20),
(3, 1, 'recompensa 3', 10),
(4, 1, 'recompensa 4', 15),
(5, 1, 'recompensa 5', 30);
