alter table dog
    add height_in_cm numeric(4, 1) not null;

alter table dog
    add constraint dog_height_in_cm_check
        check ((height_in_cm >= (1)::numeric) AND (height_in_cm <= (200)::numeric));
