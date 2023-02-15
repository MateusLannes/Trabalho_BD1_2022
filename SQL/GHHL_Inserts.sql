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
  ('Mariam Dennis','2006-11-03'),
  ('Darius Mcgowan','2001-01-11'),
  ('Allen Avery','1980-02-21'),
  ('Lee Lambert','2001-03-6'),
  ('Evelyn Jarvis','1980-10-26'),
  ('Cassidy Case','1975-10-7'),
  ('Phelan Dillon','1987-12-1'),
  ('Isaiah Pace','1999-01-27'),
  ('Fuller Tate','1981-07-11'),
  ('Gwendolyn Acosta','1977-02-6'),
  ('Dalton Crane','1988-11-2');



  
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


INSERT INTO logradouro (nome,complemento,fk_id_complemento,fk_tipo_logradouro)
VALUES
  ('Rua Alecrim',1,5),
  ('Venice Boulevard',2,13),
  ('Rua Branca Donadio',3,1),
  ('Venice Boulevard',4,11),
  ('Sheng Li Nan Jie',2,7),
  ('Sheng Li Nan Jie',2,9),
  ('Freemont Street',1,11),
  ('16th Street Mall',4,3),
  ('16th Street Mall',4,12),
  ('Av. Calouste Gulbenkian',2,8),
  ('Venice Boulevard',3,6),
  ('Av. Calouste Gulbenkian',4,12),
  ('Jenderal Sudirman',3,6),
  ('Rua Branca Donadio',2,1),
  ('Travessa Vinte e Sete',1,12),
  ('Travessa Vinte e Sete',3,8),
  ('Travessa Vinte e Sete',5,1),
  ('16th Street Mall',1,2),
  ('Jenderal Sudirman',2,1),
  ('Rua Branca Donadio',5,7);



INSERT INTO endereco (cep,numero,fk_cidade_id,fk_bairro_id,fk_estado_id,fk_pais_id,fk_logradouro_id)
VALUES
  ('143337',1316,24,17,7,2,5),
  ('FG58 5NR',4542,15,11,13,5,1),
  ('86948',3618,12,9,5,11,1),
  ('38429',4252,29,7,18,11,1),
  ('412688',1789,24,17,7,2,1),
  ('38788-24667',1565,18,13,14,6,1),
  ('735226',2817,21,15,4,7,2),
  ('NK7B 4WE',4718,15,11,13,5,13),
  ('327658',1465,14,10,12,3,1),
  ('757957',2564,14,10,12,3,7),
  ('1066',2858,19,3,16,1,1),
  ('425467',4982,11,18,17,9,15),
  ('43945',1998,28,20,11,8,1),
  ('64635',3926,14,10,12,3,1),
  ('61235-319',2063,16,2,8,10,4),
  ('10110',2029,17,12,15,4,1),
  ('51159',4520,27,21,10,7,1),
  ('727857',2202,21,15,4,7,20),
  ('81230',1090,13,5,1,7,11),
  ('66108',3064,18,13,14,6,1);

  -- Codigos postais https://codigo-postal.co/pt-br/mexico

INSERT INTO filial (telefone_fixo,nome_fantasia,fk_endereco,fk_gestor)
VALUES
  ('3338-7731','GHHL Enterprise Ltda',35,12),
  ('726-6714','GHHL Eget Venenatis LLC',27,17),
  ('1-828-555-2009','GHHL Velit Incorporated',39,12),
  ('1-673-775-0419','GHHL Volutpat Nunc Company',37,14),
  ('1-331-248-1609','GHHL Liaoning Metus Foundation',25,16);

  INSERT INTO usuario_endereco (fk_usuario_id,fk_endereco_id)
VALUES
  (13,33),
  (17,40),
  (15,23),
  (18,30),
  (18,22),
  (20,31),
  (16,29),
  (15,34),
  (12,23),
  (15,29),
  (20,32),
  (21,32),
  (23,25),
  (23,24),
  (29,29),
  (22,26),
  (22,22),
  (22,27),
  (23,23),
  (26,32);



INSERT INTO candidato (descricao,id_candidato,fk_usuario_id,fk_escolaridade)
VALUES
  ('pede, malesuada vel, venenatis vel,',1,21,4),
  ('aliquam adipiscing lacus. Ut nec',2,22,4),
  ('Nam ligula elit, pretium et,',3,23,3),
  ('Etiam gravida molestie arcu. Sed',4,24,2),
  ('tellus. Suspendisse sed dolor. Fusce',5,25,2),
  ('felis orci, adipiscing non, luctus',6,26,3),
  ('Praesent eu nulla at sem',7,27,2),
  ('lacus, varius et, euismod et,',8,28,4),
  ('neque sed dictum eleifend, nunc',9,29,4),
  ('pellentesque, tellus sem mollis dui,',10,30,3);

INSERT INTO vaga (carga_horaria,fk_gestor_id,fk_cargo,fk_area)
VALUES
  ('36',14,3,8),
  ('25',14,4,1),
  ('30',20,4,3),
  ('30',18,1,2),
  ('25',13,1,8),
  ('40',17,2,3),
  ('36',17,2,4),
  ('44',16,3,6),
  ('44',17,4,5),
  ('30',18,5,8);

alter table concorre add COLUMN data_inscricao date;
INSERT INTO concorre (fk_vaga,fk_candidato)
VALUES
  (8,1,'2011-12-05'),
  (1,8,'2021-07-24'),
  (3,9,'2016-01-28'),
  (2,7,'2010-12-25'),
  (8,2,'2014-11-27'),
  (3,2,'2012-05-12'),
  (4,5,'2010-07-19'),
  (6,9,'2014-12-18'),
  (5,9,'2009-11-27'),
  (8,4,'2017-25-06');


