# flyway

## New Migration

1. Having FlyWay enabled and hibernate.ddl-auto=validate (production mode), generate schema 1 upon empty schema
2. Having FlyWay disabled and hibernate.ddl-auto=update, generate schema 2 upon empty schema
3. Compare schema 1 to schema 2 (origin) and save SQL diff to a migration file. Migration files are to be named
   as `V47__add_dog_entity.sql`.
4. Having FlyWay enabled and hibernate.ddl-auto=validate, generate schema 3 upon schema 1. Check that schema 3 and
   schema 2 are identical.
