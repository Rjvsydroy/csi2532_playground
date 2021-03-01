ALTER TABLE athletes
RENAME COLUMN identified_gender TO gender;

INSERT INTO schema_migrations (migration, migrated_at) 
VALUES
('20210301004101-update-athletes.sql', '2021-03-01 00:41:00'); 