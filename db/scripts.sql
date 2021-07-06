/*scripts para implementação das tabela no banco
de dados PostGreSQL*/


/*
Usuario (id_Usuario, Nome*, Senha*, Pontuacao, Email*, Tel*, Rua, Numero,
id_Clinica, id_Ong, tipo)
id_Clinica referencia ClinicaVet (id_Clinica)
id_ong referencia ONG (id_ong)
*/
CREATE TABLE usuario (
    id serial PRIMARY KEY,
    nome varchar(255) NOT NULL,
    senha varchar(50) NOT NULL,
    pontuacao integer,
    email varchar(100) NOT NULL UNIQUE,
    tel varchar(9) NOT NULL,
    rua varchar(100),
    numero integer,
    id_clinica integer REFERENCES clinica(id)
    tipo varchar(13) CHECK (tipo = 'Administrador'
    or tipo = 'Voluntario' or tipo = 'Funcionario'
    or tipo = 'Adotante')
);
