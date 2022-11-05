-- Active: 1667587040170@@127.0.0.1@5432@postgres@public

--alter table vaga drop CONSTRAINT FK_VAGA_1;
-- br,com,mx,de,es,uk,co,fr,cn,pt,id dominios paises

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
('Centro Histórico',27); -- México Michoacan [morelia]

insert into tipo_gestor(nome_tipo) VALUES
  ('Geral'),
  ('Vagas'),
  ('Filial');

INSERT INTO gestor(email,fk_usuario_id,id_tipo)
VALUES
  ('auctor@ghhlcontato.de',18,3),
  ('fusce@ghhlcontato.br',20,2),
  ('vestibulum.massa.rutrum@ghhlcontato.cn',19,2),
  ('vitae.posuere@ghhlcontato.co',15,2),
  ('aenean.eget@ghhlcontato.pt',17,2),
  ('nunc.est@ghhlcontato.cn',14,3),
  ('augue.eu@ghhlcontato.de',16,2),
  ('cras.convallis@ghhlcontato.uk',11,3),
  ('egestas.lacinia@ghhlcontato.id',12,2),
  ('nec.enim@ghhlcontato.fr',13,2);

update gestor set id_tipo=1 where id=12;


/*
  Dados retirados de:
  http://suporte.quarta.com.br/LayOuts/eSocial/Tabelas/Tabela_20.htm
  Acesso em 05/11/2022
*/
INSERT INTO tipo_logradouro (nome_tipo,abreviatura)
VALUES
  ('Rodovia','R'),
  ('Condomínio','CON'),
  ('Viaduto','VD'),
  ('Morro','MRO'),
  ('Avenida','AV'),
  ('Esplanada','ESP'),
  ('Vila','VL'),
  ('Lagoa','LGA'),
  ('Pátio','PAT'),
  ('Recanto','REC'),
  ('Segunda Avenida','SEG'),
  ('Viela','VLA'),
  ('Balneário','BAL');


INSERT INTO logradouro (nome,complemento,fk_tipo_logradouro)
VALUES
  ('Rua Alecrim','Edificio',5),
  ('Venice Boulevard','Casa',13),
  ('Rua Branca Donadio','Bloco',1),
  ('Venice Boulevard','Apartamento',11),
  ('Sheng Li Nan Jie','Casa',7),
  ('Sheng Li Nan Jie','Edificio',9),
  ('Freemont Street','Edificio',11),
  ('16th Street Mall','Apartamento',3),
  ('16th Street Mall','Apartamento',12),
  ('Av. Calouste Gulbenkian','Casa',8),
  ('Venice Boulevard','Bloco',6),
  ('Av. Calouste Gulbenkian','Apartamento',12),
  ('Jenderal Sudirman','Bloco',6),
  ('Rua Branca Donadio','Casa',1),
  ('Travessa Vinte e Sete','Edificio',12),
  ('Travessa Vinte e Sete','Bloco',8),
  ('Travessa Vinte e Sete','Residencial',1),
  ('16th Street Mall','Edificio',2),
  ('Jenderal Sudirman','Casa',1),
  ('Rua Branca Donadio','Residencial',7);

