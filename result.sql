create schema testSQL

--     создание таблицы
    create table PERSONS
    (
        name           varchar(150) not null,
        surname        varchar(150) not null,
        age            int          not null,
        phone_number   varchar(20),
        city_of_living varchar(150),
        primary key (name, surname, age)
    );

-- наполнение таблицы
insert into PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Ivan', 'Ivanov', 20, '1111', 'MOSCOW');

insert into PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Petr', 'Petrov', 18, '', 'MOSCOW');

insert into PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Anna', 'Popova', 40, '', 'Paris');

insert into PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Anna', 'Ivanova', 50, '', 'MOSCOW');

insert into PERSONS (name, surname, age, phone_number, city_of_living)
VALUES ('Olga', 'Petrova', 52, '', 'MOSCOW');

-- запрос жителей Москвы
select name, surname
from PERSONS
where city_of_living = 'MOSCOW';

-- запрос всех старше 27
select *
from PERSONS
where age > 27
order by age desc
