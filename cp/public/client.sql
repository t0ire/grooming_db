create table client
(
    client_id         bigint generated always as identity
        primary key,
    full_name         varchar(150)                                       not null,
    phone             varchar(20)                                        not null
        unique,
    email             varchar(254)
        unique,
    password_hash     text                                               not null,
    registration_date timestamp with time zone default CURRENT_TIMESTAMP not null,
    is_active         boolean                  default true              not null
);

alter table client
    owner to postgres;

