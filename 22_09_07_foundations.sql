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

ALTER TABLE fdn_projects ADD COLUMN fp_detail TEXT;
ALTER TABLE fdn_projects ADD COLUMN fp_detail_place TEXT;

UPDATE fdn_projects SET fp_detail = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', fp_detail_place = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.' WHERE fp_detail IS null AND fp_detail_place IS null; 
