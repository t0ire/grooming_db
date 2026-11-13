create table groomer
(
    groomer_id bigint generated always as identity
        primary key,
    full_name  varchar(150)         not null,
    phone      varchar(20)
        unique,
    email      varchar(254)
        unique,
    is_active  boolean default true not null
);

alter table groomer
    owner to postgres;

