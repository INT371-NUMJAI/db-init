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

CREATE TABLE IF NOT EXISTS withdrawal_request(
withdrawal_uuid VARCHAR(50) NOT NULL,
fdn_project_uuid VARCHAR(50) NOT NULL,
bank_account_uuid VARCHAR(50) NOT NULL ,
status VARCHAR(20) NOT NULL,
create_date TIMESTAMP ,
approve_date TIMESTAMP ,
PRIMARY KEY (withdrawal_uuid),
FOREIGN KEY (fdn_project_uuid)
      REFERENCES fdn_projects (fdn_project_uuid),
FOREIGN KEY (bank_account_uuid)
      REFERENCES bank_accounts (bank_account_uuid));
      
ALTER TABLE  fdn_projects 
    ALTER COLUMN goal TYPE NUMERIC,
    ALTER COLUMN received TYPE NUMERIC ;
    
ALTER TABLE volunteers_projects ADD COLUMN status VARCHAR(50) DEFAULT 'OPEN';
    
    CREATE TABLE IF NOT EXISTS articles(
articles_uuid VARCHAR(50) NOT NULL,
articles_header TEXT NOT NULL,
articles_body TEXT NOT NULL ,
status VARCHAR(20) NOT NULL,
create_date TIMESTAMP DEFAULT NOW(),
author_role VARCHAR(50),
create_by_email VARCHAR(255) ,
picture_path VARCHAR(255),
PRIMARY KEY (articles_uuid));

ALTER TABLE users ADD CONSTRAINT username_unique UNIQUE (username);

ALTER TABLE articles ADD CONSTRAINT fk_articles_create_by_email FOREIGN KEY (create_by_email) REFERENCES users (email);

CREATE TABLE IF NOT EXISTS user_fav(
user_fav_uuid VARCHAR(50) NOT NULL,
user_uuid VARCHAR(50) NOT NULL,
type_of_fav VARCHAR(20) NOT NULL ,
fav_ref_uuid VARCHAR(50) NOT NULL,
create_date TIMESTAMP DEFAULT NOW(),
PRIMARY KEY (user_fav_uuid ));

ALTER TABLE foundations DROP COLUMN profile_path ; 
ALTER TABLE users ADD COLUMN profile_path TEXT ;

ALTER TABLE foundations ADD COLUMN profile_path TEXT ;

CREATE TABLE IF NOT EXISTS user_fav(
user_fav_uuid VARCHAR(50) NOT NULL,
user_email VARCHAR(50) NOT NULL,
type_of_fav VARCHAR(20) NOT NULL ,
fav_ref_uuid VARCHAR(50) NOT NULL,
fav_ref_title VARCHAR(255) NOT NULL,
create_date TIMESTAMP DEFAULT NOW(),
PRIMARY KEY (user_fav_uuid ));


CREATE TABLE IF NOT EXISTS fdn_project_progress(
fdn_project_progress_uuid VARCHAR(50) NOT NULL,
fdn_project_uuid VARCHAR(50) NOT NULL,
title VARCHAR(255) NOT NULL,
detail TEXT  NOT NULL ,
picture_path VARCHAR(255),
proceed_date DATE NOT NULL,
create_date TIMESTAMP DEFAULT NOW(),
PRIMARY KEY (fdn_project_progress_uuid),
FOREIGN KEY (fdn_project_uuid)
      REFERENCES fdn_projects (fdn_project_uuid));
      
      CREATE TABLE IF NOT EXISTS fdn_project_financial(
fdn_project_financial_uuid VARCHAR(50) NOT NULL,
fdn_project_uuid VARCHAR(50) NOT NULL,
detail TEXT NOT NULL,
quantity VARCHAR(255) NOT NULL ,
amount INTEGER NOT NULL,
create_date TIMESTAMP DEFAULT NOW(),
PRIMARY KEY (fdn_project_financial_uuid),
FOREIGN KEY (fdn_project_uuid)
      REFERENCES fdn_projects (fdn_project_uuid));

ALTER TABLE target_categories ADD COLUMN target_category_name_en VARCHAR(255);

update target_categories set target_category_name_en = 'medical' where target_category_id = '1';
update target_categories set target_category_name_en = 'education' where target_category_id = '2';
update target_categories set target_category_name_en = 'children' where target_category_id = '3';
update target_categories set target_category_name_en = 'disaster' where target_category_id = '4';
update target_categories set target_category_name_en = 'handicapped' where target_category_id = '5';
update target_categories set target_category_name_en = 'elder' where target_category_id = '6';
update target_categories set target_category_name_en = 'valley' where target_category_id = '7';
update target_categories set target_category_name_en = 'art' where target_category_id = '8';
update target_categories set target_category_name_en = 'animal' where target_category_id = '9';
update target_categories set target_category_name_en = 'environment' where target_category_id = '10';
update target_categories set target_category_name_en = 'human' where target_category_id = '11';

CREATE TABLE IF NOT EXISTS user_suggestion(
target_category_id VARCHAR(50) NOT NULL,
user_uuid VARCHAR(255) NOT NULL,
PRIMARY KEY (target_category_id,user_uuid),
FOREIGN KEY (target_category_id)
      REFERENCES target_categories (target_category_id),
FOREIGN KEY (user_uuid)
      REFERENCES users (user_uuid));
