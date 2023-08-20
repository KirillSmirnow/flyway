create table position
(
    id        uuid             not null
        primary key,
    latitude  double precision not null
        constraint position_latitude_check
            check ((latitude >= ('-90'::integer)::double precision) AND (latitude <= (90)::double precision)),
    longitude double precision not null
        constraint position_longitude_check
            check ((longitude <= (180)::double precision) AND (longitude >= ('-180'::integer)::double precision))
);

create table venue
(
    id              bigserial
        primary key,
    approval_status varchar(255) not null,
    name            varchar(100) not null
        constraint uk_9uyuoc3vs9lv1qpae6j8q40xe
            unique,
    position_id     uuid         not null
        constraint uk_ovej8qot8ewep18t0uofumg4p
            unique
        constraint fk40r13e17m6arj0fn7ymr3n16f
            references position
);
