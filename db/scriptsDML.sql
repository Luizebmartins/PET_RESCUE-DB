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