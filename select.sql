-------SELECT---------

---Название и продолжительность самого длительного трека.

select track_name, duration 
from Track_list
order by duration desc
limit 1;

---Название треков, продолжительность которых не менее 3,5 минут.

select track_name, duration 
from Track_list
where duration >= 210;

---Названия сборников, вышедших в период с 2018 по 2020 год включительно.

select distinct col_name
from collection
where col_year between 2018 and 2020;

---Исполнители, чьё имя состоит из одного слова.

select name
from list_of_performers
where name not like '% %';

---Название треков, которые содержат слово «мой» или «my».

select track_name
from Track_list
where upper(track_name) like '%MY%' or upper(track_name) like '%МОЙ%';

---Количество исполнителей в каждом жанре.

select b.genre_name, count(*)
from perform_genre a
left join genre_list b on a.genre_id = b.genre_id
group by b.genre_name;

---Количество треков, вошедших в альбомы 2019–2020 годов.

select count(*)
from track_list a
left join albums b
on a.albums_id = b.albums_id
where b.year between 2019 and 2020;

---Средняя продолжительность треков по каждому альбому.

select b.albums_name, avg(a.duration)
from track_list a
left join albums b
on a.albums_id = b.albums_id
group by b.albums_name;

---Все исполнители, которые не выпустили альбомы в 2020 году.

select c.name from album_performer a
left join albums b
on a.albums_id = b.albums_id
left join list_of_performers c
on a.perf_id = c.perf_id 
where b.year != 2020;

---Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).

select distinct col_name 
from collection a
left join track_col b
on a.collection_id  = b.collection_id
left join track_list c
on b.track_id = c.track_id 
left join albums d
on c.albums_id = d.albums_id 
left join album_performer e
on e.albums_id  = d.albums_id
left join list_of_performers q
on q.perf_id = e.perf_id 
where q.name = 'Chris Cornell';











