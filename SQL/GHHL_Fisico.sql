-- Active: 1667587040170@@127.0.0.1@5432@postgres@public
/* GHHL_Logico: */

CREATE TABLE USUARIO (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    data_nasc date
);
CREATE TABLE VAGA (
    ID SERIAL PRIMARY KEY,
    carga_horaria Integer,
    FK_GESTOR_Id integer,
    FK_CARGO Integer,
    FK_AREA Integer
);
CREATE TABLE CANDIDATO (
    descricao VARCHAR(50),
    qualificacao VARCHAR(50),
    id_candidato Integer,
    FK_USUARIO_id Integer,
    PRIMARY KEY (id_candidato)
);
CREATE TABLE GESTOR (
    Id SERIAL PRIMARY KEY,
    email VARCHAR(50),
    FK_USUARIO_id Integer,
    id_tipo Integer
);

CREATE TABLE CARGO (
    id SERIAL PRIMARY KEY,
    nomeCargo VARCHAR(50)
);

CREATE TABLE BAIRRO (
    id SERIAL PRIMARY KEY,
    nome_bairro VARCHAR(50)
);

CREATE TABLE CIDADE (
    id Serial PRIMARY KEY,
    nome_cidade VARCHAR(50)
);

CREATE TABLE ENDERECO (
    id SERIAL PRIMARY KEY,
    cep varchar(10),
    numero Integer,
    FK_CIDADE_id Integer,
    FK_BAIRRO_id Integer,
    FK_ESTADO_id Integer,
    FK_PAIS_id Integer,
    FK_LOGRADOURO_id Integer
);

CREATE TABLE AREA (
    id Serial PRIMARY KEY,
    nome_area VARCHAR(50)
);

CREATE TABLE LOGRADOURO (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50),
    FK_ID_COMPLEMENTO Integer,
    FK_TIPO_LOGRADOURO Integer
);

CREATE TABLE COMPLEMENTO (
    id SERIAL PRIMARY KEY,
    complemento VARCHAR(45)
);


CREATE TABLE usuario_endereco (
    fk_USUARIO_id Integer,
    fk_ENDERECO_FILIAL_PAIS_id integer
);

CREATE TABLE TIPO_LOGRADOURO (
    id SERIAL PRIMARY KEY,
    nome_tipo VARCHAR(50),
    abreviatura VARCHAR(50)
);

CREATE TABLE ESTADO (
    id SERIAL PRIMARY KEY,
    nome_estado VARCHAR(50)
);

CREATE TABLE FILIAL (
    id SERIAL PRIMARY KEY,
    telefone_fixo VARCHAR(50),
    nome_fantasia VARCHAR(50),
    FK_ENDERECO Integer,
    FK_GESTOR Integer
);

CREATE TABLE PAIS (
    id SERIAL PRIMARY KEY,
    nome_pais VARCHAR(50)
);

CREATE TABLE CONCORRE (
    id SERIAL PRIMARY KEY,
    FK_CANDIDATO Integer,
    FK_VAGA Integer
);

CREATE TABLE TIPO_GESTOR (
    id_tipo SERIAL PRIMARY KEY,
    nome_tipo VARCHAR(50)
);
/*FOREIGN KEYS de CARGO,AREA,GESTOR para VAGA*/
ALTER TABLE VAGA ADD CONSTRAINT FK_VAGA_2
    FOREIGN KEY (FK_CARGO)
    REFERENCES CARGO (id);

ALTER TABLE VAGA ADD CONSTRAINT FK_VAGA_1
    FOREIGN KEY (FK_AREA)
    REFERENCES AREA (id);
ALTER TABLE VAGA ADD CONSTRAINT FK_VAGA_3
    FOREIGN KEY (FK_GESTOR_ID)
    REFERENCES GESTOR (ID);

/*FK de Usuario para candidato*/
ALTER TABLE CANDIDATO ADD CONSTRAINT FK_CANDIDATO_1
    FOREIGN KEY (FK_USUARIO_id)
    REFERENCES USUARIO (id)
    ON DELETE CASCADE;

/*FK de USUARIO,TIPO_GESTOR para GESTOR*/
ALTER TABLE GESTOR ADD CONSTRAINT FK_GESTOR_1
    FOREIGN KEY (FK_USUARIO_id)
    REFERENCES USUARIO (id);
ALTER TABLE GESTOR ADD CONSTRAINT FK_GESTOR_2
    FOREIGN KEY (id_tipo)
    REFERENCES TIPO_GESTOR (id_tipo);
 
/*FK de CIDADE,BAIRRO,ESTADO,PAIS,LOGRADOURO para ENDERECO*/
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_1
    FOREIGN KEY (FK_CIDADE_id)
    REFERENCES CIDADE (id)
    ON DELETE RESTRICT;
 
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_3
    FOREIGN KEY (FK_BAIRRO_id)
    REFERENCES BAIRRO (id)
    ON DELETE RESTRICT;
 
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_4
    FOREIGN KEY (FK_PAIS_id)
    REFERENCES PAIS (id);
 
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_5
    FOREIGN KEY (FK_ESTADO_id)
    REFERENCES ESTADO (id);
 
ALTER TABLE ENDERECO ADD CONSTRAINT FK_ENDERECO_6
    FOREIGN KEY (FK_LOGRADOURO_id)
    REFERENCES LOGRADOURO (id);
 
/*FK de TIPO_LOGRADOURO para LOGRADOURO*/
ALTER TABLE LOGRADOURO ADD CONSTRAINT FK_LOGRADOURO_2
    FOREIGN KEY (FK_TIPO_LOGRADOURO)
    REFERENCES TIPO_LOGRADOURO (id);
    
/* FK de id_complemento para logradouro*/    
ALTER TABLE LOGRADOURO ADD CONSTRAINT FK_LOGRADOURO_3
    FOREIGN KEY (FK_ID_COMPLEMENTO)
    REFERENCES COMPLEMENTO (id);
 
/*altera o nome da tabela POSSUI para USUARIO_ENDERECO*/
ALTER TABLE POSSUI RENAME TO usuario_endereco;
-- FK de usuario para usuario_endereco
ALTER TABLE usuario_endereco ADD CONSTRAINT FK_Possui_1
    FOREIGN KEY (fk_USUARIO_id)
    REFERENCES USUARIO (id)
    ON DELETE RESTRICT;

-- renomeia a coluna de usuario_endereco
ALTER TABLE usuario_endereco 
    RENAME COLUMN fk_endereco_filial_pais_id TO fk_endereco_id;
-- FK de endereco para usuario_endereco
ALTER TABLE usuario_endereco ADD CONSTRAINT FK_Possui_2
    FOREIGN KEY (fk_ENDERECO_id)
    REFERENCES endereco (ID);

/*FK de GESTOR,ENDERECO para FILIAL*/
ALTER TABLE FILIAL ADD CONSTRAINT FK_FILIAL_2
    FOREIGN KEY (FK_ENDERECO)
    REFERENCES ENDERECO (id);
ALTER TABLE FILIAL ADD CONSTRAINT FK_FILIAL_3
    FOREIGN KEY (FK_GESTOR)
    REFERENCES GESTOR (id);


/*Arrumar*/
/*FK de CANDIDATO,VAGA para Concorre*/

ALTER TABLE CONCORRE ADD CONSTRAINT FK_CONCORRE_2
    FOREIGN KEY (FK_CANDIDATO)
    REFERENCES candidato (id_candidato);

ALTER TABLE CONCORRE ADD CONSTRAINT FK_CONCORRE_3
    FOREIGN KEY (FK_VAGA)
    REFERENCES VAGA (id);

--if necessary
-- ALTER TABLE CANDIDATO DROP COLUMN FK_USUARIO_ID;
--ALTER TABLE candidato ADD COLUMN FK_USUARIO_id integer;
alter table estado add COLUMN FK_id_pais INTEGER;
alter table cidade add COLUMN FK_id_estado INTEGER;
alter table bairro add COLUMN FK_id_cidade INTEGER;

ALTER TABLE estado ADD CONSTRAINT FK_pais_1
    FOREIGN KEY (FK_id_pais)
    REFERENCES pais (id);

ALTER TABLE cidade ADD CONSTRAINT FK_estado_1
    FOREIGN KEY (FK_id_estado)
    REFERENCES estado (id);
ALTER TABLE bairro ADD CONSTRAINT FK_cidade_1
    FOREIGN KEY (FK_id_cidade)
    REFERENCES cidade (id);

alter table candidato add COLUMN fk_escolaridade INTEGER;
