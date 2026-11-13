create table pet
(
    pet_id     bigint generated always as identity
        primary key,
    client_id  bigint       not null
        constraint fk_pet_client
            references client
            on delete restrict,
    breed_id   bigint       not null
        constraint fk_pet_breed
            references breed
            on delete restrict,
    name       varchar(100) not null,
    birth_date date,
    notes      text
);

alter table pet
    owner to postgres;

