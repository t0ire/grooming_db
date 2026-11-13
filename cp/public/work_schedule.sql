create table work_schedule
(
    schedule_id bigint generated always as identity
        primary key,
    groomer_id  bigint                   not null
        constraint fk_schedule_groomer
            references groomer
            on delete restrict,
    start_at    timestamp with time zone not null,
    end_at      timestamp with time zone not null,
    constraint chk_schedule_time
        check (end_at > start_at)
);

alter table work_schedule
    owner to postgres;

