create table CUSTOMERS
(
    id             SERIAL,
    name           varchar(150) not null,
    surname        varchar(150) not null,
    age            int          not null,
    phone_number   varchar(20),
    primary key (id)
);

insert into CUSTOMERS (name, surname, age, phone_number)
VALUES ('Alexey', 'Ivanov', 20, '1111');

insert into CUSTOMERS (name, surname, age, phone_number)
VALUES ('alexey', 'petrov', 30, '2222');

insert into CUSTOMERS (name, surname, age, phone_number)
VALUES ('Anna', 'Popova', 40, '3333');