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



  
INSERT INTO pais (nome_pais)
VALUES
  ('Portugal'), --
  ('China'), --
  ('Germany'), --
  ('Indonesia'), --
  ('United Kingdom'),--
  ('France'), --
  ('México'), --
  ('Spain'), --
  ('Colombia'),
  ('Brasil'), --
  ('United States of America'); --


INSERT INTO estado (nome_estado,fk_id_pais)
VALUES 
  ('Tabasco',7), -- Mexico ++
  ('Maranhão',10), -- Brasil ++
  ('Baja California',7), -- México ++
  ('Puebla',7), -- MExico ++
  ('Colorado',11), -- EUA ++
  ('Minnesota')11, -- EUA ++
  ('Dōngběi',2), -- China ++
  ('São Paulo',10), --Brasil ++
  ('Utah',11), -- EUA ++
  ('Michoacán',7), -- Mexico 
  ('Catalunha',8), -- portugal ++
  ('Baviera',3), --Alemanha ++
  ('Suffolk',5), -- Reino Unido - Inglaterra ++
  ('Córsega',6), -- França ++
  ('Java',4), -- Indonésia ++
  ('Lisboa',1), --portugal ++
  ('Boyacá',9), -- Colombia ++
  ('California',11); -- EUA ++




INSERT INTO cidade (nome_cidade, fk_id_estado)
VALUES
  ('Tunja',17), -- COLOMBIA capital de [BOYACA] ++++
  ('Denver',5), -- EUA Capital do [Colorado] ++++
  ('Villahermosa',1),--MEXICO Capital de [TABASCO] ++++
  ('Munique',12), -- ALEMANHA Capital de [Baviera] ++++
  ('Ipswich',13), -- UK INGLATERRA centro Adiministrativo de [Suffolk]++
  ('São paulo',8), -- Brasil capital de [SAO PAULO] ++++
  ('Jacarta',15), --INDONESIA capital de [JAVA]++++
  ('Ajaccio',14), -- FRANÇA capital de [CORSEGA] ++++(Cidade de napoleao)
  ('Lisboa',16), -- PORTUGAL capital de [LISBOA] ++++
  ('São Luís',2), -- BRASIL capital do [MARANHÃO] ++
  ('Puebla',4), -- MÉXICO capital de [PUEBLA]++
  ('Mexicali',3), -- MÉXICO capital de [BAJA CALIFORNIA] ++
  ('Saint Paul',6), -- EUA capital de [MINESSOTA] ++++
  ('Shenyang',7), -- CHINA capital de [DONGBEI] ++
  ('Salt Lake City',9), --EUA capital de [UTAH] ++
  ('Sacramento',18), --EUA capital da [CALIFORNIA] ++
  ('Morélia',10),--MÉXICO capital de [MICHOACAN]
  ('Barcelona',11), --ESPANHA capital da [CATALUNHA]
  ('Los Angeles',18); -- EUA cidade da [CALIFORNIA] ++++

INSERT INTO bairro (nome_bairro, fk_id_cidade) VALUES
('Vila Mariana',16), --Sao paulo [Sao Paulo]
('Ibirapuera',16), -- Sao paulo [São paulo]
('Santo António',19), -- Portugal [Lisboa]
('Alfama',19), -- Portugal  [Lisboa]
('La choca',13),  -- Mexico [Villahermosa]
('Summit Hill',23), -- EUA Minnesota [Saint Paul]
('Chinatown',29), -- EUA California [Los angeles]
('Maldonado',11), -- COLOMBIA [Tunja]
('Lower Downtown',12), -- EUA [Denver]
('Sendling',14), -- Alemanha [Munique]
('Ipswich',15), -- UK Inglaterra [Suffolk ipswich]
('Glodok Chinatown',17), -- Indonesia JAVA [JACARTA]
('Bairro Genoves',18), -- França  Corsega [Ajaccio] 
('Renascença',20), --Brasil Maranhao[São Luís]
('Zócalo',21), -- México Puebla [PUEBLA]
('Éguia',22), --México Baja California [Mexicali]
('Tie xi',24), -- China Dongbei [Shenyang]
('Salt Lake Valley',25), -- EUA Salt Lake City [UTAH]
('River Park',26), -- EUA California [Sacramento]
('El Gòtic',28), -- Espanha barcelona [Catalunha]
('Centro Histórico',27) -- México Michoacan [morelia]