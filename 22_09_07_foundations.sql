ALTER TABLE foundations DROP COLUMN create_date;
ALTER TABLE foundations ADD COLUMN create_date DATE DEFAULT NOW();

ALTER TABLE users DROP COLUMN create_date;
ALTER TABLE users ADD COLUMN create_date DATE DEFAULT NOW();

ALTER TABLE fdn_rejected DROP COLUMN create_date;
ALTER TABLE fdn_rejected ADD COLUMN create_date DATE DEFAULT NOW();

ALTER TABLE fdn_projects DROP COLUMN resource_uuid;
ALTER TABLE fdn_projects ADD COLUMN picture_path TEXT;

ALTER TABLE foundations DROP COLUMN resource_uuid;
ALTER TABLE foundations ADD COLUMN qrcode_path TEXT;
ALTER TABLE foundations ADD COLUMN profile_path TEXT;

UPDATE foundations SET status = 'VERIFIED' WHERE status = 'APPROVED';
