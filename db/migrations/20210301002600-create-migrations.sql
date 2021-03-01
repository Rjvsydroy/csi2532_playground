CREATE TABLE schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);

INSERT INTO schema_migrations (migration, migrated_at) 
VALUES
    ('20210228223100-create-athletes.sql', '2021-02-28 22:31:00'),
    ('20210301002600-create-migrations.sql', '2021-03-01 00:26:00');
