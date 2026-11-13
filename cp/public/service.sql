create table service
(
    service_id       bigint generated always as identity
        primary key,
    name             varchar(120)         not null
        unique,
    description      text,
    price            numeric(10, 2)       not null
        constraint service_price_check
            check (price > (0)::numeric),
    duration_minutes integer              not null
        constraint service_duration_minutes_check
            check (duration_minutes > 0),
    is_active        boolean default true not null
);

alter table service
    owner to postgres;

