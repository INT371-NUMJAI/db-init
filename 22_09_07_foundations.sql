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

ALTER TABLE fdn_projects ADD COLUMN responsible_person VARCHAR(255);
UPDATE fdn_projects SET responsible_person = 'John Smith' WHERE responsible_person IS NULL;

ALTER TABLE fdn_projects ADD COLUMN status VARCHAR(50)  DEFAULT 'OPEN' ;
ALTER TABLE foundations ADD COLUMN name_en VARCHAR(255);

ALTER TABLE fdn_projects DROP COLUMN start_date ;
ALTER TABLE fdn_projects DROP COLUMN end_date ;
ALTER TABLE fdn_projects ADD COLUMN start_date Date  DEFAULT NOW() ;
ALTER TABLE fdn_projects ADD COLUMN end_date Date  DEFAULT NOW() ;

DROP TABLE resources CASCADE;
ALTER TABLE volunteers_projects DROP COLUMN resource_uuid;
ALTER TABLE fdn_posts DROP COLUMN resource_uuid;
ALTER TABLE user_posts DROP COLUMN resource_uuid;
