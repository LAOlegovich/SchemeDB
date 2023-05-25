create table if not exists Genres (
	id serial primary key,
	name varchar(20),
	description text
	);

create table if not exists Musicians (
	id serial primary key,
	nickname varchar(30),
	real_name varchar(10),
	real_surname varchar(20),
	age integer check(age > 0)
	);

create table if not exists Genres_to_Musicians (
	genre_id integer references Genres(id),
	musician_id integer references Musicians(id),
	primary key(genre_id,musician_id)
	);

create table if not exists Albums (
	id serial primary key,
	name varchar(30),
	release_year date
	);

create table if not exists Collection (
	id serial primary key,
	name varchar(30),
	release_year date
	);

create table if not exists Tracks (
	id serial primary key,
	name varchar(30),
	duration interval,
	description text,
	album_id integer not null references Albums(id)
	);

create table if not exists Musicians_to_Albums (
	musician_id integer references Musicians(id),
	album_id integer references Albums(id),
	primary key(musician_id,album_id)
	);

create table if not exists Collections_to_Tracks (
	collection_id integer references Collection(id),
	track_id integer references Tracks(id),
	primary key(collection_id,track_id)
	);

	
	
