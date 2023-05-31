insert into genres (name,description) values ('Рок','в переводе с англ. — «качать», «укачивать», «качаться»');
insert into genres (name,description) values ('Поп','pop music от popular music; современная популярная музыка');
insert into genres (name,description) values ('Диско','англ. disco, букв. — «дискотека»');

insert into musicians (nickname, real_name, real_surname,age) values ('Сплин','Александр','Васильев',1969);
insert into musicians (nickname, real_name, real_surname,age) values ('Смысловые галлюцинации','Сергей','Бобунец',1973);
insert into musicians (nickname, real_name, real_surname,age) values ('Стинг','Гордон','Самнер',1951);
insert into musicians (nickname, real_name, real_surname,age) values ('C.C. Catch','Каролина','Мюллер',1964);

insert into genres_to_musicians (genre_id,musician_id) values (1,1);
insert into genres_to_musicians (genre_id,musician_id) values (2,1);
insert into genres_to_musicians (genre_id,musician_id) values (1,2);
insert into genres_to_musicians (genre_id,musician_id) values (2,2);
insert into genres_to_musicians (genre_id,musician_id) values (2,3);
insert into genres_to_musicians (genre_id,musician_id) values (2,4);
insert into genres_to_musicians (genre_id,musician_id) values (3,4);

insert into albums (name,release_year) values('Гранатовый Альбом','2018-01-01');
insert into albums (name,release_year) values('Трудных Времён Песни','2016-02-12');
insert into albums (name,release_year) values('Лёд 9','2001-01-01');
insert into albums (name,release_year) values ('Ten Summoner''s Tales','1993-01-01');
insert into albums (name,release_year) values ('The Very Best of Sting', '1997-02-01');
insert into albums (name,release_year) values ('Another nigth in Nashville','2014-03-02');
insert into albums (name,release_year) values ('Driving in the night', '2018-02-03');


insert into musicians_to_albums (musician_id,album_id) values (1,1);
insert into musicians_to_albums (musician_id,album_id) values (2,2);
insert into musicians_to_albums (musician_id,album_id) values (2,3);
insert into musicians_to_albums (musician_id,album_id) values (3,4);
insert into musicians_to_albums (musician_id,album_id) values (3,5);
insert into musicians_to_albums (musician_id,album_id) values (4,6);
insert into musicians_to_albums (musician_id,album_id) values (4,7);


insert into collection (name,release_year) values ('Greatest hits', '2018-01-01');
insert into collection (name,release_year) values ('Сплин. Лучшее', '2021-01-01');
insert into collection (name,release_year) values ('Remixes', '2013-02-04');
insert into collection (name,release_year) values ('The best of Sting 1984-1994', '1995-04-06');

insert into tracks (name,duration,description,album_id) values ('Весь этот бред','0 0:05:06','',1);
insert into tracks (name,duration,description,album_id) values ('Орбит без сахара','0 0:03:36','',1);
insert into tracks (name,duration,description,album_id) values ('Бог устал нас любить','0 0:04:25','',2);
insert into tracks (name,duration,description,album_id) values ('Зачем топтать мою любовь','0 0:03:27','',3);
insert into tracks (name,duration,description,album_id) values ('Разум когда-нибудь победит','0 0:04:46','',3);
insert into tracks (name,duration,description,album_id) values ('If I Ever Lose My Faith in You','0 0:04:30','',4);
insert into tracks (name,duration,description,album_id) values ('Englishman in New York','0 0:04:27','',5);
insert into tracks (name,duration,description,album_id) values ('Another nigth in Nashville','0 0:04:34','',6);
insert into tracks (name,duration,description,album_id) values ('Ocean Green','0 0:03:37','',7);

insert into collections_to_tracks (collection_id,track_id) values (1,8);
insert into collections_to_tracks (collection_id,track_id) values (1,9);
insert into collections_to_tracks (collection_id,track_id) values (2,1);
insert into collections_to_tracks (collection_id,track_id) values (2,2);
insert into collections_to_tracks (collection_id,track_id) values (3,4);
insert into collections_to_tracks (collection_id,track_id) values (3,5);
insert into collections_to_tracks (collection_id,track_id) values (4,6);









