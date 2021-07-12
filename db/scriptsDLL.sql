CREATE TABLE ong (
    id serial PRIMARY KEY,
    nome varchar(255) NOT NULL,
    email varchar(255) NOT NULL,
    tel varchar(20) NOT NULL,
    rua varchar(100) NOT NULL,
    numero integer NOT NULL,
    site varchar(255)
);

CREATE TABLE clinica (
    id serial PRIMARY KEY,
    nome varchar(255) NOT NULL,
    rua varchar(100) NOT NULL,
    numero integer NOT NULL, 
    hor_inicio time NOT NULL,
    hor_fim time NOT NULL
);

CREATE TABLE usuario (
    id serial PRIMARY KEY,
    nome varchar(255) NOT NULL,
    senha varchar(50) CHECK (length(senha) > 4) NOT NULL,
    pontuacao integer,
    email varchar(100) UNIQUE NOT NULL,
    tel varchar(20) NOT NULL,
    rua varchar(100),
    numero integer,
    id_clinica integer REFERENCES clinica(id),
    id_ong integer REFERENCES ong(id),
    t_admin boolean DEFAULT 'false',
    t_volunt boolean DEFAULT 'false',
    t_func boolean DEFAULT 'false',
    t_adot boolean DEFAULT 'false'

);

CREATE TABLE abrigo (
    id serial PRIMARY KEY,
    nome varchar(255),
    capacidade integer NOT NULL,
    email varchar(255) NOT NULL,
    tel varchar(20) NOT NULL,
    rua varchar(100) NOT NULL,
    numero integer NOT NULL,
    id_ong integer REFERENCES ong(id),
    id_voluntario integer REFERENCES usuario(id)
);

CREATE TABLE foto (
    id serial PRIMARY KEY,
    link varchar(255) UNIQUE NOT NULL,
    id_abrigo integer REFERENCES abrigo(id) NOT NULL
);

CREATE TABLE animal (
    id serial PRIMARY KEY,
    raca varchar(50),
    cor varchar(50) NOT NULL,
    nome VARCHAR(255),
    vacinado boolean NOT NULL,
    castrado boolean NOT NULL,
    id_abrigo integer REFERENCES abrigo(id) NOT NULL,
    id_user_resg integer REFERENCES usuario(id) NOT NULL,
    id_adotante integer REFERENCES usuario(id)
);

CREATE TABLE medicamento (
    id serial PRIMARY KEY,
    nome varchar(255) NOT NULL,
    valor float NOT NULL
);

CREATE TABLE consulta (
    id serial PRIMARY KEY,
    data_consulta date NOT NULL,
    hora_consulta time NOT NULL,
    id_animal integer REFERENCES animal(id) NOT NULL,
    id_clinica integer REFERENCES clinica(id) NOT NULL,
    UNIQUE(data_consulta, hora_consulta, id_animal, id_clinica)
);


CREATE TABLE prescricao (
    id serial PRIMARY KEY,
    id_consulta integer REFERENCES consulta(id) NOT NULL,
    id_medicamento integer REFERENCES medicamento(id) NOT NULL,
    UNIQUE(id_consulta, id_medicamento)
);

CREATE TABLE patrocinador (
    id serial PRIMARY KEY,
    nome varchar(255) NOT NULL,
    setor varchar(255) NOT NULL,
    id_admin integer REFERENCES usuario(id) NOT NULL
);

CREATE TABLE recompensa (
    id serial PRIMARY KEY,
    id_patrocinador integer REFERENCES patrocinador(id) ON DELETE CASCADE NOT NULL,
    num_sequencia integer NOT NULL,
    nome varchar(255) NOT NULL,
    preco float NOT NULL,
    descricao varchar(255) DEFAULT 'Parabens pela recompensa',
    UNIQUE(id_patrocinador, num_sequencia)
);
