---INSERT---

insert into genre_list(genre_name) values('Electronic');
insert into genre_list(genre_name) values('Hip hop');
insert into genre_list(genre_name) values('Pop');
insert into genre_list(genre_name) values('Rock');
insert into genre_list(genre_name) values('Metal');

insert into list_of_performers(name) values('Goldmyth');
insert into list_of_performers(name) values('Blue MC');
insert into list_of_performers(name) values('Michael Jackson');
insert into list_of_performers(name) values('Taylor Swift');
insert into list_of_performers(name) values('Freddie Mercury');
insert into list_of_performers(name) values('Chris Cornell');

insert into albums(Albums_name, Year) values ('My mistake', 2020);
insert into albums(Albums_name, Year) values ('First', 2022);
insert into albums(Albums_name, Year) values ('Bad', 1987);
insert into albums(Albums_name, Year) values ('Fearless', 2008);
insert into albums(Albums_name, Year) values ('Mr. Bad guy', 1985); 
insert into albums(Albums_name, Year) values ('You Know My Name', 2006);

insert into Track_list(Track_name, Duration, Albums_id) values ('On Melancholy Hill', 190, 1);
insert into Track_list(Track_name, Duration, Albums_id) values ('The Trick', 112, 1);
insert into Track_list(Track_name, Duration, Albums_id) values ('Psych', 202, 2);
insert into Track_list(Track_name, Duration, Albums_id) values ('Hsyp', 148, 2);
insert into Track_list(Track_name, Duration, Albums_id) values ('Dont Let It Get You Down', 304, 3);
insert into Track_list(Track_name, Duration, Albums_id) values ('The 1', 176, 4);
insert into Track_list(Track_name, Duration, Albums_id) values ('Living On My Own', 436, 5);
insert into Track_list(Track_name, Duration, Albums_id) values ('You Know My Name', 154, 6);

insert into collection(col_name, col_year) values ('Goldmyth - Blue MC', 2023);
insert into collection(col_name, col_year) values ('Best 2022', 2022);
insert into collection(col_name, col_year) values ('Classic singers', 2021);
insert into collection(col_name, col_year) values ('Only 3 tracks', 2020);

insert into Track_col(collection_id, Track_id) values (1,1);
insert into Track_col(collection_id, Track_id) values (1,2);
insert into Track_col(collection_id, Track_id) values (2,3);
insert into Track_col(collection_id, Track_id) values (2,4);
insert into Track_col(collection_id, Track_id) values (2,5);
insert into Track_col(collection_id, Track_id) values (3,4);
insert into Track_col(collection_id, Track_id) values (3,5);
insert into Track_col(collection_id, Track_id) values (4,6);
insert into Track_col(collection_id, Track_id) values (4,5);
insert into Track_col(collection_id, Track_id) values (4,3);
insert into Track_col(collection_id, Track_id) values (2,8);
insert into Track_col(collection_id, Track_id) values (3,7);

insert into perform_genre(perf_id, Genre_id) values (1,1);
insert into perform_genre(perf_id, Genre_id) values (2,2);
insert into perform_genre(perf_id, Genre_id) values (3,3);
insert into perform_genre(perf_id, Genre_id) values (4,3);
insert into perform_genre(perf_id, Genre_id) values (5,4);
insert into perform_genre(perf_id, Genre_id) values (6,5);

insert into Album_performer(albums_id, perf_id) values (1,1);
insert into Album_performer(albums_id, perf_id) values (2,2);
insert into Album_performer(albums_id, perf_id) values (3,3);
insert into Album_performer(albums_id, perf_id) values (4,4);
insert into Album_performer(albums_id, perf_id) values (5,5);
insert into Album_performer(albums_id, perf_id) values (6,6);















