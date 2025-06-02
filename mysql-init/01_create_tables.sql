create table Categories
(
    id       bigint unsigned auto_increment
        primary key,
    category varchar(45) not null,
    constraint category
        unique (category)
);

create table Promotions
(
    id              bigint unsigned auto_increment
        primary key,
    name            varchar(50)  not null,
    description     text         null,
    discount        tinyint      not null,
    beginning_date  date         not null,
    expiration_date date         not null,
    photo           varchar(150) not null
);

create table Products
(
    id            bigint unsigned auto_increment
        primary key,
    category_id   bigint unsigned              not null,
    promotion_id  bigint unsigned              null,
    name          varchar(100)                 not null,
    description   text                         null,
    price         double unsigned              not null,
    status        tinyint unsigned default '0' not null,
    photo         varchar(150)                 not null,
    orders_number int unsigned                 not null,
    constraint name
        unique (name),
    constraint Products_ibfk_1
        foreign key (category_id) references Categories (id),
    constraint Products_ibfk_2
        foreign key (promotion_id) references Promotions (id)
);

create index category_id
    on Products (category_id);

create index promotion_id
    on Products (promotion_id);

create table Roles
(
    id   bigint unsigned auto_increment
        primary key,
    role varchar(15) not null,
    constraint role
        unique (role)
);

create table UserInformation
(
    id         bigint unsigned auto_increment
        primary key,
    name       varchar(35)     null,
    surname    varchar(35)     null,
    patronymic varchar(35)     null,
    phone      bigint unsigned null
);

create table BankCards
(
    id                 bigint unsigned auto_increment
        primary key,
    userInformation_id bigint unsigned   null,
    card_number        bigint unsigned   not null,
    expiration_year    smallint unsigned not null,
    expiration_month   tinyint unsigned  not null,
    card_owner         varchar(70)       not null,
    cvv                smallint unsigned not null,
    balance            double unsigned   not null,
    constraint card_number
        unique (card_number),
    constraint BankCards_ibfk_1
        foreign key (userInformation_id) references UserInformation (id)
);

create index userInformation_id
    on BankCards (userInformation_id);

create table UserOrders
(
    id            bigint unsigned auto_increment
        primary key,
    address       varchar(100)                    not null,
    order_date    date                            not null,
    delivery_date date                            not null,
    status        varchar(15) default 'ожидается' not null
);

create table Users
(
    id                 bigint unsigned auto_increment
        primary key,
    userInformation_id bigint unsigned null,
    role_id            bigint unsigned not null,
    email              varchar(50)     not null,
    password           varchar(50)     not null,
    constraint email
        unique (email),
    constraint Users_ibfk_1
        foreign key (userInformation_id) references UserInformation (id),
    constraint Users_ibfk_2
        foreign key (role_id) references Roles (id)
);

create table Orders
(
    id           bigint unsigned auto_increment
        primary key,
    product_id   bigint unsigned   not null,
    user_id      bigint unsigned   not null,
    userOrder_id bigint unsigned   null,
    number       smallint unsigned not null,
    constraint Orders_ibfk_1
        foreign key (product_id) references Products (id),
    constraint Orders_ibfk_2
        foreign key (userOrder_id) references UserOrders (id),
    constraint Orders_ibfk_3
        foreign key (user_id) references Users (id)
);

create index product_id
    on Orders (product_id);

create index userOrder_id
    on Orders (userOrder_id);

create index user_id
    on Orders (user_id);

create index role_id
    on Users (role_id);

create index userInformation_id
    on Users (userInformation_id);

