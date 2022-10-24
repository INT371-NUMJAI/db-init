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

CREATE TABLE IF NOT EXISTS report_issue(
issue_uuid VARCHAR(50) NOT NULL PRIMARY KEY ,
issue_type VARCHAR(255) NOT NULL,
detail TEXT NOT NULL,
reporter VARCHAR(255),
issue_status VARCHAR(150));

ALTER TABLE volunteers_projects DROP COLUMN LOCATION;
ALTER TABLE volunteers_projects DROP COLUMN contact_detail;
ALTER TABLE volunteers_projects ADD COLUMN location_detail TEXT;
ALTER TABLE volunteers_projects ADD COLUMN location_district VARCHAR(100);
ALTER TABLE volunteers_projects ADD COLUMN location_subdistrict VARCHAR(100);
ALTER TABLE volunteers_projects ADD COLUMN location_province VARCHAR(100);
ALTER TABLE volunteers_projects ADD COLUMN location_postalcose VARCHAR(100);
ALTER TABLE volunteers_projects ADD COLUMN picture_path VARCHAR(255);


CREATE TABLE IF NOT EXISTS volunteer_registered_anonymous (
volunteer_registered_anonymous_uuid VARCHAR(50) NOT NULL,
volunteer_projects_uuid VARCHAR(50) NOT NULL,
fname VARCHAR(50),
lname VARCHAR(50),
contact_number VARCHAR(50),
email VARCHAR(50),
PRIMARY KEY (volunteer_registered_anonymous_uuid),
FOREIGN KEY (volunteer_projects_uuid)
      REFERENCES volunteers_projects (volunteer_projects_uuid));

CREATE TABLE IF NOT EXISTS volunteer_registered(
volunteer_registered_uuid VARCHAR(50) NOT NULL,
volunteer_projects_uuid VARCHAR(50) NOT NULL,
user_uuid VARCHAR(50),
volunteer_registered_anonymous_uuid VARCHAR(50),
PRIMARY KEY (volunteer_registered_uuid),
FOREIGN KEY (volunteer_projects_uuid)
      REFERENCES volunteers_projects (volunteer_projects_uuid),
FOREIGN KEY (user_uuid)
      REFERENCES users (user_uuid),
FOREIGN KEY (volunteer_registered_anonymous_uuid)
      REFERENCES volunteer_registered_anonymous (volunteer_registered_anonymous_uuid));
      
ALTER TABLE users ADD COLUMN phone_number VARCHAR(10) DEFAULT '0900000000';

CREATE TABLE IF NOT EXISTS volunteers_projects_qualifies (
  volunteer_projects_uuid VARCHAR (50) NOT NULL,
  qualifies_detail TEXT NOT NULL ,
    PRIMARY KEY (volunteer_projects_uuid,qualifies_detail),
  FOREIGN KEY (volunteer_projects_uuid)
      REFERENCES volunteers_projects (volunteer_projects_uuid));
      
      ALTER TABLE volunteers_projects DROP COLUMN qualify;
      
      ALTER TABLE volunteers_projects RENAME COLUMN people_register TO people_registered;
      DROP TABLE volunteer_registered,volunteer_registered_anonymous;
      CREATE TABLE IF NOT EXISTS volunteer_enrolled(
volunteer_enrolled_uuid VARCHAR(50) NOT NULL,
volunteer_projects_uuid VARCHAR(50) NOT NULL,
is_member BOOLEAN,
user_uuid VARCHAR(50),
fname VARCHAR(150),
lname VARCHAR(150),
contact_number VARCHAR(150),
email VARCHAR(150),
PRIMARY KEY (volunteer_enrolled_uuid),
FOREIGN KEY (volunteer_projects_uuid)
      REFERENCES volunteers_projects (volunteer_projects_uuid),
FOREIGN KEY (user_uuid)
      REFERENCES users (user_uuid));
      
      
      CREATE TABLE IF NOT EXISTS transactions(
transaction_uuid VARCHAR(50) NOT NULL,
fdn_project_uuid VARCHAR(50) NOT NULL,
payment_id VARCHAR(27) NOT NULL,
amount INTEGER,
create_date TIMESTAMP DEFAULT NOW(),
PRIMARY KEY (transaction_uuid),
FOREIGN KEY (fdn_project_uuid)
      REFERENCES fdn_projects (fdn_project_uuid));


CREATE TABLE IF NOT EXISTS bank_accounts(
bank_account_uuid VARCHAR(50) NOT NULL,
bank_brand VARCHAR(50) NOT NULL,
bank_number VARCHAR(10) NOT NULL,
account_name VARCHAR(150) NOT NULL,
fdn_uuid VARCHAR(50) NOT NULL,
PRIMARY KEY (bank_account_uuid),
FOREIGN KEY (fdn_uuid)
      REFERENCES foundations (fdn_uuid));

ALTER TABLE  fdn_projects ADD COLUMN received INTEGER DEFAULT 0 ;


ALTER TABLE  fdn_projects 
    ALTER COLUMN goal TYPE NUMERIC,
    ALTER COLUMN received TYPE NUMERIC ;
