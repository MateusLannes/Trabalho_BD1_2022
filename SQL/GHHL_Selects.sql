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



select * from endereco e --1
inner join bairro on(e.fk_bairro_id=bairro.id) --2
inner join cidade on(e.fk_cidade_id=cidade.id) --3
inner join estado on(e.fk_estado_id=estado.id) --4
inner join pais on (e.fk_pais_id=pais.id) --5
inner join logradouro on(e.fk_logradouro_id=logradouro.id) --6
inner join complemento on ((logradouro.fk_id_complemento::INTEGER)=complemento.id) --7 -- Mateus colocou id como caracter....
inner join tipo_logradouro as tl on(logradouro.fk_tipo_logradouro=tl.id) --8
inner join filial on(filial.fk_endereco=e.id) --9
inner join gestor on(filial.fk_gestor=gestor.id)  --10
inner join tipo_gestor on (gestor.id_tipo=tipo_gestor.id_tipo)--11
inner join usuario on(gestor.fk_usuario_id=usuario.id)--12
inner join usuario_endereco as ue on (ue.fk_usuario_id=usuario.id)--13
inner join vaga on (gestor.id=vaga.fk_gestor_id)--14
inner join area on (vaga.fk_area=area.id)--15
inner join cargo on (cargo.id=vaga.fk_cargo)--16
inner join concorre on (concorre.fk_vaga=vaga.id)--17
inner join candidato on (candidato.id_candidato=concorre.fk_candidato); --18




select e.fk_pais_id as "Código do País",
    pa.nome_pais as "País",
    f.nome_fantasia as "Filial" 
from pais as pa JOIN endereco as e on(e.fk_pais_id=pa.id)
JOIN filial as f on (f.fk_endereco=e.id) join 
(select u.nome as "Pessoa"
JOIN usuario_endereco as ue on(ue.fk_endereco_id=e.id)
join usuario as u on(u.id=ue.fk_usuario_id));

select u.nome as "Pessoa" 
from usuario_endereco as ue join endereco as en on(ue.fk_endereco_id=en.id)
join usuario as u on(u.id=ue.fk_usuario_id) WHERE en.fk_pais_id =7;

select e.fk_pais_id as "Código do País",
    pa.nome_pais as "País",
    f.nome_fantasia as "Filial" 
from pais as pa JOIN endereco as e on(e.fk_pais_id=pa.id)
JOIN filial as f on (f.fk_endereco=e.id) where e.fk_pais_id=7; 


UPDATE  usuario_endereco
set fk_endereco_id = 38 WHERE fk_usuario_id = 17;

SELECT us.nome, g.email as "email gestor" 
from usuario as us join gestor as g on(g.fk_usuario_id=us.id)
join vaga on (g.id=vaga.fk_gestor_id); 

SELECT u.nome as candidato, v.id as vaga, us.nome as gestor
FROM usuario as u join candidato as c on(c.fk_usuario_id=u.id)
join concorre as co on (co.fk_candidato=c.id_candidato)
join vaga as v on (v.id=co.fk_vaga) 
join gestor as g on (g.id=v.fk_gestor_id)
join usuario as us on (g.fk_usuario_id=us.id);


select distinct u.id as user, count(e.id) as pais
from usuario as u
join usuario_endereco as ue on(ue.fk_usuario_id = u.id)
join endereco as e on (ue.fk_endereco_id = e.id)
GROUP BY u.id ORDER BY u.id;

SELECT count(u.nome) as candidatos, a.nome_area
FROM candidato as c 
JOIN usuario as u on (c.fk_usuario_id=u.id)
JOIN concorre as co on(c.id_candidato=co.fk_candidato)
JOIN vaga as v on(co.fk_vaga=v.id)
JOIN area as a on(v.fk_cargo=a.id)
GROUP BY a.nome_area;


SELECT g.id;