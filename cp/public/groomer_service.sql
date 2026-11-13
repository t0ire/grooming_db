create table groomer_service
(
    groomer_id bigint not null
        references groomer
            on delete cascade,
    service_id bigint not null
        references service
            on delete cascade,
    primary key (groomer_id, service_id)
);

alter table groomer_service
    owner to postgres;

