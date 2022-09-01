delete from target_categories  where target_category_id  in ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11');

insert into target_categories values ('1', 'การแพทย์');
insert into target_categories values ('2', 'การศึกษา');
insert into target_categories values ('3', 'เด็กและสตรี');
insert into target_categories values ('4', 'บรรเทาสาธารณะภัย');
insert into target_categories values ('5', 'ผู้พิการ');
insert into target_categories values ('6', 'ผู้สูงอายุ');
insert into target_categories values ('7', 'พัฒนาชุมชน');
insert into target_categories values ('8', 'ศิลปะและวัฒนธรรม');
insert into target_categories values ('9', 'สัตว์');
insert into target_categories values ('10', 'สิ่งแวดล้อม');
insert into target_categories values ('11', 'สิทธิมนุษยชน');


CREATE TABLE IF NOT EXISTS  volunteers_projects (
    volunteer_projects_uuid VARCHAR (50) PRIMARY KEY,
    vp_name VARCHAR (255)  NOT NULL,
    location  TEXT NOT NULL,
    people_needed INTEGER NOT NULL,
    people_register INTEGER NOT NULL DEFAULT 0,
      description  TEXT NOT NULL,
      qualify TEXT NOT NULL,
      contact_detail TEXT NOT NULL,
      activity_type VARCHAR (255),
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    activity_start_date TIMESTAMP,
    activity_end_date TIMESTAMP,
    fdn_uuid VARCHAR (50),
    user_uuid VARCHAR (50),
      create_date TIMESTAMP NOT NULL,
       resource_uuid VARCHAR (50) ,
    FOREIGN KEY (resource_uuid)
      REFERENCES resources (resource_uuid),
    FOREIGN KEY (fdn_uuid)
      REFERENCES foundations (fdn_uuid),
    FOREIGN KEY (user_uuid)
      REFERENCES users (user_uuid)
);


CREATE TABLE IF NOT EXISTS volunteers_projects_duties (
  volunteer_projects_uuid VARCHAR (50) NOT NULL,
  duty_detail TEXT NOT NULL ,
    PRIMARY KEY (volunteer_projects_uuid,duty_detail),
  FOREIGN KEY (volunteer_projects_uuid)
      REFERENCES volunteers_projects (volunteer_projects_uuid));

     
CREATE TABLE IF NOT EXISTS volunteer_project_target_categories (
  volunteer_projects_uuid VARCHAR (50) NOT NULL,
  target_category_id VARCHAR (50) NOT NULL ,
    PRIMARY KEY (volunteer_projects_uuid, target_category_id),
  FOREIGN KEY (volunteer_projects_uuid)
      REFERENCES volunteers_projects (volunteer_projects_uuid),
    FOREIGN KEY (target_category_id)
      REFERENCES target_categories (target_category_id)
);


delete from volunteers_projects where volunteer_projects_uuid in ('7d710651-3db4-49c1-8c2a-27e209eda51d', 'b2a4f1f2-b10c-4544-912e-4aa36f9404a4', '2912427b-c120-4129-be90-d3db752a4a2c', 'a1266f53-e16c-49b4-a2c5-14dcce978554');

INSERT INTO volunteers_projects VALUES('7d710651-3db4-49c1-8c2a-27e209eda51d','สจ๊วตตาปรือ','13 Soi Chindathavil Rama 4 Road Bangkok 10500',12,6,'โบรกเกอร์เซ็นเตอร์ไฟลท์โชห่วย วิลเลจอยุติธรรมแฟลช อุปการคุณ สันทนาการหลินจือโชห่วย ทัวร์นาเมนท์ฮ่องเต้หลวงตาแหววพงษ์','รายLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','มูลนิธิกระจกเงา เลขที่ 191 ซอยวิภาวดี 62 (แยก 4-7) ถนนวิภาวดีรังสิต','Online',now(),now(),now(),now(),'949526a8-893e-41af-a222-abd7dbfb5fac',null,now(),null);
INSERT INTO volunteers_projects VALUES('b2a4f1f2-b10c-4544-912e-4aa36f9404a4','โบรกเกอร์เซ็นเตอร์ไฟลท์โชห่วย','202 Kaosan Rd. Banglumpho Bangkok 10200',15,1,'โบรกเกอร์เซ็นเตอร์ไฟลท์โชห่วย วิลเลจอยุติธรรมแฟลช อุปการคุณ สันทนาการหลินจือโชห่วย ทัวร์นาเมนท์ฮ่องเต้หลวงตาแหววพงษ์','รายLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','มูลนิธิกระจกเงา เลขที่ 191 ซอยวิภาวดี 62 (แยก 4-7) ถนนวิภาวดีรังสิต','On-site',now(),now(),now(),now(),'949526a8-893e-41af-a222-abd7dbfb5fac',null,now(),null);
INSERT INTO volunteers_projects VALUES('2912427b-c120-4129-be90-d3db752a4a2c','แจ็กพอต กุนซือ โพสต์ยนตรกรรมมอคคา','1032/321 Soi Ruamsirimitr Phaholyothin Road Ladyao Bangkok 10900',20,5,'โบรกเกอร์เซ็นเตอร์ไฟลท์โชห่วย วิลเลจอยุติธรรมแฟลช อุปการคุณ สันทนาการหลินจือโชห่วย ทัวร์นาเมนท์ฮ่องเต้หลวงตาแหววพงษ์','รายLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.','มูลนิธิกระจกเงา เลขที่ 191 ซอยวิภาวดี 62 (แยก 4-7) ถนนวิภาวดีรังสิต','Online',now(),now(),now(),now(),'29536bf0-6fab-4257-be44-463b46a1388e',null,now(),null);
INSERT INTO volunteers_projects VALUES('a1266f53-e16c-49b4-a2c5-14dcce978554','โบว์ลิ่งไมค์โมจิแจ๊กเก็ตแมกกาซีน','5-7-9 Itsaraphap Road Hirunrujee Bangkok 10600',30,8,'โบรกเกอร์เซ็นเตอร์ไฟลท์โชห่วย วิลเลจอยุติธรรมแฟลช อุปการคุณ สันทนาการหลินจือโชห่วย ทัวร์นาเมนท์ฮ่องเต้หลวงตาแหววพงษ์','รายLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','มูลนิธิกระจกเงา เลขที่ 191 ซอยวิภาวดี 62 (แยก 4-7) ถนนวิภาวดีรังสิต','On-site',now(),now(),now(),now(),'cd4ea7b8-b5e8-418e-abbf-4b735a58c374',null,now(),null);


delete from volunteer_project_target_categories  where volunteer_projects_uuid in ('7d710651-3db4-49c1-8c2a-27e209eda51d', 'b2a4f1f2-b10c-4544-912e-4aa36f9404a4', '2912427b-c120-4129-be90-d3db752a4a2c', 'a1266f53-e16c-49b4-a2c5-14dcce978554');

insert into volunteer_project_target_categories  (volunteer_projects_uuid, target_category_id)
values ('7d710651-3db4-49c1-8c2a-27e209eda51d', '1');

insert into volunteer_project_target_categories  (volunteer_projects_uuid, target_category_id)
values ('7d710651-3db4-49c1-8c2a-27e209eda51d', '2');

insert into volunteer_project_target_categories  (volunteer_projects_uuid, target_category_id)
values ('b2a4f1f2-b10c-4544-912e-4aa36f9404a4', '9');

insert into volunteer_project_target_categories  (volunteer_projects_uuid, target_category_id)
values ('2912427b-c120-4129-be90-d3db752a4a2c', '10');

insert into volunteer_project_target_categories  (volunteer_projects_uuid, target_category_id)
values ('a1266f53-e16c-49b4-a2c5-14dcce978554', '3');

insert into volunteer_project_target_categories  (volunteer_projects_uuid, target_category_id)
values ('a1266f53-e16c-49b4-a2c5-14dcce978554', '5');

insert into volunteer_project_target_categories  (volunteer_projects_uuid, target_category_id)
values ('a1266f53-e16c-49b4-a2c5-14dcce978554', '11');


delete from volunteers_projects_duties where volunteer_projects_uuid in ('7d710651-3db4-49c1-8c2a-27e209eda51d', 'b2a4f1f2-b10c-4544-912e-4aa36f9404a4', '2912427b-c120-4129-be90-d3db752a4a2c', 'a1266f53-e16c-49b4-a2c5-14dcce978554');

insert into volunteers_projects_duties (volunteer_projects_uuid, duty_detail)
values ('7d710651-3db4-49c1-8c2a-27e209eda51d', 'เป็นคนจิตใจดี');

insert into volunteers_projects_duties (volunteer_projects_uuid, duty_detail)
values ('7d710651-3db4-49c1-8c2a-27e209eda51d', 'เป็นคนน่ารัก');

insert into volunteers_projects_duties (volunteer_projects_uuid, duty_detail)
values ('7d710651-3db4-49c1-8c2a-27e209eda51d', 'เป็นคนรักสนุก');

insert into volunteers_projects_duties (volunteer_projects_uuid, duty_detail)
values ('b2a4f1f2-b10c-4544-912e-4aa36f9404a4', 'ร่างกายแข็งแรง');

insert into volunteers_projects_duties (volunteer_projects_uuid, duty_detail)
values ('b2a4f1f2-b10c-4544-912e-4aa36f9404a4', 'ร่าเริงแจ่มใส');

insert into volunteers_projects_duties (volunteer_projects_uuid, duty_detail)
values ('b2a4f1f2-b10c-4544-912e-4aa36f9404a4', 'เมตตากรุณา');

insert into volunteers_projects_duties (volunteer_projects_uuid, duty_detail)
values ('2912427b-c120-4129-be90-d3db752a4a2c', 'อ่อนโยน');

insert into volunteers_projects_duties (volunteer_projects_uuid, duty_detail)
values ('2912427b-c120-4129-be90-d3db752a4a2c', 'เลือดกรุ๊ปบี');

insert into volunteers_projects_duties (volunteer_projects_uuid, duty_detail)
values ('a1266f53-e16c-49b4-a2c5-14dcce978554', 'เต้นเก่ง');