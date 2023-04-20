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

-- desafio 2

select concat(a.first_name, " ", a.last_name) as "Nombre de actor" from actor_movie am  
inner join movies m 
on m.id = am.movie_id 
inner join actors a 
on a.id = am.actor_id  
where m.title like "La Guerra de las galaxias%"
group by concat(a.first_name, " ", a.last_name)
;

select g.name , s.title  from genres g 
inner join series s 
on g.id  = s.genre_id ;

-- desafio 3

select coalesce(g.name, "no tiene genero") , m.title  from genres g 
right join movies m 
on g.id  = m.genre_id ;
