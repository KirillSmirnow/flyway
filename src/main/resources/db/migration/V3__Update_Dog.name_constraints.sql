alter table public.dog
    alter column name type varchar(200) using name::varchar(200);
