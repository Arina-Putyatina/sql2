create table ORDERS
(
    id             SERIAL,
    date           date default current_date,
    customer_id    int not null,
    product_name   varchar(150) not null,
    amount         decimal,
    primary key (id),
    foreign key (customer_id) references CUSTOMERS(id)
);

insert into ORDERS (customer_id, product_name, amount)
VALUES (1, 'product1', 200);

insert into ORDERS (customer_id, product_name, amount)
VALUES (1, 'product2', 1000);

insert into ORDERS (customer_id, product_name, amount)
VALUES (2, 'product2', 1000);

insert into ORDERS (customer_id, product_name, amount)
VALUES (3, 'product3', 1004);

insert into ORDERS (customer_id, product_name, amount)
VALUES (4, 'product4', 100);