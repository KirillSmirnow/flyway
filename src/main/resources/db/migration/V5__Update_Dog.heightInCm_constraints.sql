alter table dog
    drop constraint dog_height_in_cm_check;

alter table dog
    add constraint dog_height_in_cm_check
        check ((height_in_cm >= (10)::numeric) AND (height_in_cm <= (100)::numeric));
