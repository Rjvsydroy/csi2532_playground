CREATE TABLE athletes(
  id int,
  name varchar(300),
  identified_gender varchar(5),
  dob date
  PRIMARY KEY(id)
)

INSERT INTO athletes
  (id, name, identified_gender, dob)
VALUES
  (1, 'Syd', 'm', '20-11-1997',),
  (2, 'Tom', 'm', '12-02-1996'),
  (3, 'Becky', 'F' '15-05-1998');
 

CREATE TABLE schema_migrations (
 migration varchar(255),
 migrated_at time,
 PRIMARY KEY (migration)
);

INSERT INTO schema_migrations (migration, migrated_at) 
VALUES
    ('20210228223100-create-athletes.sql', '2021-02-28 22:31:00'),
    ('20210301002600-create-migrations.sql', '2021-03-01 00:26:00');

ALTER TABLE athletes
RENAME COLUMN identified_gender TO gender;

INSERT INTO schema_migrations (migration, migrated_at) 
VALUES
('20210301004101-update-athletes.sql', '2021-03-01 00:41:00'); 

