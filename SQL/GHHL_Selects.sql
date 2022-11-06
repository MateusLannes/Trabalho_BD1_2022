-- Active: 1667587040170@@127.0.0.1@5432@postgres@public

Select * from Trab_bd1;

-- Get a list of databases

Select * from bairro 
join cidade on(bairro.fk_id_cidade=cidade.id) 
JOIN estado on (cidade.fk_id_estado=estado.id) 
join pais on(estado.fk_id_pais=pais.id)
join endereco on(endereco.fk_pais_id=pais.id)
join logradouro on(endereco.fk_logradouro_id=logradouro.id)
join tipo_logradouro as tl on(logradouro.fk_tipo_logradouro=tl.id)
join filial on(filial.fk_endereco=endereco.id);



select * from endereco e
join bairro on(e.fk_bairro_id=bairro.id)
join cidade on(e.fk_cidade_id=cidade.id)
join estado on(e.fk_estado_id=estado.id)
join pais on (e.fk_pais_id=pais.id)
join logradouro on(e.fk_logradouro_id=logradouro.id)
join tipo_logradouro as tl on(logradouro.fk_tipo_logradouro=tl.id)
join filial on(filial.fk_endereco=e.id)
join gestor on(filial.fk_gestor=gestor.id)
join usuario on(gestor.fk_usuario_id=usuario.id)


