create or replace database movies;

create table person(
    id_person int not null primary key,
    born int,
    name string not null);
create table movie(
    id_movie int not null primary key, 
    released int, 
    tagline string, 
    title string not null);

create table acted_in(
    id_person int not null, 
    id_movie int not null, 
    role string not null,
    primary key (id_person, id_movie),
    foreign key (id_person) references person(id_person),
    foreign key (id_movie) references movie(id_movie));
create table directed(
    id_person int not null, 
    id_movie int not null,
    primary key (id_person, id_movie),
    foreign key (id_person) references person(id_person),
    foreign key (id_movie) references movie(id_movie));
create table produced(
    id_person int not null, 
    id_movie int not null,
    primary key (id_person, id_movie),
    foreign key (id_person) references person(id_person),
    foreign key (id_movie) references movie(id_movie));
create table wrote(
    id_person int not null, 
    id_movie int not null,
    primary key (id_person, id_movie),
    foreign key (id_person) references person(id_person),
    foreign key (id_movie) references movie(id_movie));
create table reviewed(
    id_person int not null, 
    id_movie int not null, 
    rating int not null, 
    summary string,
    primary key (id_person, id_movie),
    foreign key (id_person) references person(id_person),
    foreign key (id_movie) references movie(id_movie));

create table follows(
    id_person int not null, 
    id_followed int not null,
    primary key (id_person, id_followed),
    foreign key (id_person) references person(id_person),
    foreign key (id_followed) references person(id_person));