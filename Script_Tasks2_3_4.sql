--Название и продолжительность самого длительного трека
select name,duration from tracks 
	order by duration desc limit 1;

--Название треков, продолжительность которых не менее 3,5 минут
select name from tracks
	where duration >= make_interval(0,0,0,0,0,3,30);

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
select name from collection c
 where extract(year from c.release_year) between 2018 and 2020;

--Исполнители, чьё имя состоит из одного слова
select m.nickname  from musicians m 
	where m.nickname not like '% %';

--Название треков, которые содержат слово «мой» или «my»
select name from tracks t 
	where lower(t.name) like any ('{"%my%","%мой%"}');

--Количество исполнителей в каждом жанре
select g."name" as "Жанр",count(*) as "Кол-во исполнителей в жанре" from genres g 
	inner join genres_to_musicians gtm on g.id = gtm.genre_id 
	inner join musicians m on m.id = gtm.musician_id
		group by g."name";

--Количество треков, вошедших в альбомы 2019–2020 годов
	select count(*) as "Кол-во треков" from tracks t 
		inner join albums a on t.album_id = a.id 
			where extract(year from a.release_year) between 2019 and 2020; 
		
--Средняя продолжительность треков по каждому альбому
	select a."name",avg(t.duration) from tracks t 
		inner join albums a on t.album_id = a.id 
			group by a."name";
		
--Все исполнители, которые не выпустили альбомы в 2020 году
		select m.nickname from musicians m 
			inner join musicians_to_albums mta on m.id =mta.musician_id
			inner join albums a on a.id =mta.album_id
				where extract(year from a.release_year) != 2020
					group by m.nickname;

--Названия сборников, в которых присутствует конкретный исполнитель (Сплин)	
	select distinct c."name"  from musicians m 
		inner join musicians_to_albums mta on m.id =mta.musician_id 
		inner join albums a on a.id =mta.album_id 
		inner join tracks t on t.album_id =a.id 
		inner join collections_to_tracks ctt on t.id =ctt.track_id 
		inner join collection c on c.id = ctt.collection_id 
			where m.nickname = 'Сплин';
			
--Названия альбомов, в которых присутствуют исполнители более чем одного жанра
	select a."name"  from albums a
		inner join musicians_to_albums mta on mta.album_id =a.id 
		inner join musicians m on m.id = mta.musician_id 
		inner join genres_to_musicians gtm on m.id = gtm.musician_id 
		inner join genres g on g.id = gtm.genre_id
			group by a."name"
				having count(*) > 1;
			
-- Наименования треков, которые не входят в сборники
	select t."name"  from tracks t 
		left join collections_to_tracks ctt on t.id =ctt.track_id
		where ctt.collection_id is null;
	
--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько
	select m.nickname  from musicians m 
		inner join musicians_to_albums mta on mta.musician_id =m.id 
		inner join albums a on a.id = mta.album_id 
		inner join tracks t on a.id =t.album_id
			where t.duration = (select t2.duration from tracks t2 order by t2.duration limit 1);
		
--Названия альбомов, содержащих наименьшее количество треков
	with p_zapr as (	
		select a.name,count(*) as cnt from albums a 
		inner join tracks t on a.id =t.album_id
		group by a."name"
		order by count(*)
		)
	select * from p_zapr z1
		where z1.cnt = (select min(p_zapr.cnt) from p_zapr);


		
		
		
		
		