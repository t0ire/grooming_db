create table breed
(
    breed_id bigint generated always as identity
        primary key,
    name     varchar(100) not null
        unique
);

alter table breed
    owner to postgres;

