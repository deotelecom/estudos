create table if not exists usuarios(
    id_usuario serial not null primary key,
    usuario varchar(30) not null,
    login varchar(12) not null,
    senha char(32) not null,
    token char(32)
);
insert into usuarios(usuario, login, senha) values('Deogenes Bispo Correa', 'deogenes', 'e10adc3949ba59abbe56e057f20f883e');

create table IF NOT EXISTS disciplinas(
    id_disciplina serial primary key not null,
    disciplina varchar(30) not null unique,
    disciplina_status boolean
);

create table IF NOT EXISTS assuntos(
    id_assunto serial primary key not null,
    assunto varchar(60) not null,
    texto text not null,
    ordem int not null,
    assunto_status boolean,
    fk_assunto_disciplina int not null,
    CONSTRAINT fk_assunto_disciplina 
        FOREIGN KEY(fk_assunto_disciplina)
        REFERENCES disciplinas(id_disciplina)
);
