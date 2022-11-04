-- Active: 1667587040170@@127.0.0.1@5432@postgres@public

--alter table vaga drop CONSTRAINT FK_VAGA_1;

insert into area (nome_area)VALUES
('programacao'),
('segurança'),
('banco de dados'),
('desenvolvimento de software'),
('marketing'),
('design'),
('analista de sistemas'),
('Engenheiro'),
('analista de compras'),
('assistente fiscal');

insert into cargo (nomecargo)VALUES
('Junior'),
('Pleno'),
('Senior'),
('Master'),
('Especialista');

INSERT INTO usuario (nome,data_nasc)
VALUES
  ('Ebony Robertson','1990-06-20'),
  ('Thaddeus Wheeler','2006-05-13'),
  ('Kelly Rivas','2015-06-28'),
  ('Macon Gill','2003-03-08'),
  ('Yuri Lewis','2000-10-18'),
  ('Abdul Goff','2022-02-08'),
  ('Porter Cotton','1993-03-01'),
  ('Tad Roth','2007-01-01'),
  ('Lysandra Mclaughlin','1994-08-27'),
  ('Mariam Dennis','2006-11-03');

INSERT INTO cidade (nome_cidade)
VALUES
  ('Ribeirão Preto'),
  ('Petrolina'),
  ('Sousa'),
  ('Ananindeua'),
  ('Ilhéus'),
  ('Castanhal'),
  ('Caxias do Sul'),
  ('Contagem'),
  ('Castanhal'),
  ('Campina Grande');

INSERT INTO pais (nome_pais)
VALUES
  ('Portugal'),
  ('China'),
  ('Germany'),
  ('Indonesia'),
  ('United Kingdom'),
  ('France'),
  ('México'),
  ('Spain'),
  ('Colombia'),
  ('Brasil');
