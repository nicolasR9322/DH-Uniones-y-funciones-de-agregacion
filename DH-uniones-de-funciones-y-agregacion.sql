-- desafio 1

select s.title , g.name  from genres g 
inner join series s 
on s.genre_id = g.id ;

select e.title , concat(a.first_name, " ", a.last_name) as "Nombre completo"
from episodes e 
inner join actor_episode ae 
on e.id = ae.episode_id 
inner join actors a 
on a.id = ae.actor_id
;