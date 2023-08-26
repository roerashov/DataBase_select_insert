create table if not exists Albums(
Albums_id serial PRIMARY KEY,
Albums_name varchar(60) not null,
year integer not null check (year > 1900)
);
create table if not exists list_of_performers(
Perf_id serial PRIMARY KEY,
Name varchar(60) not null);

create table if not exists Genre_list(
Genre_id serial PRIMARY key,
Genre_name varchar(30) UNIQUE not null );

create table if not exists Track_list(
Track_id serial PRIMARY key,
Track_name text not null,
Duration integer not null CHECK (Duration > 0),
Albums_id integer not null references Albums(Albums_id)
);

create table if not exists collection(
collection_id serial PRIMARY key,
col_name varchar(30) not null,
col_year integer not null check (col_year > 1900)
);

create table if not exists Track_col(
Track_col_id serial PRIMARY key,
collection_id integer not null references collection(collection_id),
Track_id integer not null references Track_list(Track_id)
);

create table if not exists Album_performer(
Album_performer_id serial PRIMARY key,
Albums_id integer references Albums(Albums_id),
Perf_id integer references list_of_performers(Perf_id)
);

create table if not exists perform_genre(
perf_genre_id serial PRIMARY key,
Genre_id integer references Genre_list(Genre_id),
Perf_id integer references list_of_performers(Perf_id)
);





/*
drop table Track_col;
drop table collection;
drop table perform_genre;
drop table Album_performer;
drop table Track_list;
drop table Genre_list;
drop table list_of_performers;
drop table Albums;
*/


