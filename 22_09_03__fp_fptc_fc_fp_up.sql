delete from fdn_projects where fdn_project_uuid in ('43a047f7-55c2-49cc-9aa2-19527da04727', 'cef1b5a2-fc05-4405-8c1e-95ee06ea97ec', '62f9fb70-8ab0-4ae6-a1af-f55d76a88bad', 'a2ea259a-84c4-4aff-baf8-42a76368aadb', '7b17238a-8c41-42a9-8b9a-b6bc742fd0f4');

insert into fdn_projects (fdn_project_uuid, fp_name, start_date, end_date, goal, create_date, fdn_uuid, resource_uuid)
values ('43a047f7-55c2-49cc-9aa2-19527da04727', 'โบรกเกอร์เซ็นเตอร์ไฟลท์โชห่วย', now(), now(), 15000, now(), '949526a8-893e-41af-a222-abd7dbfb5fac', null);

insert into fdn_projects (fdn_project_uuid, fp_name, start_date, end_date, goal, create_date, fdn_uuid, resource_uuid)
values ('cef1b5a2-fc05-4405-8c1e-95ee06ea97ec', 'นู้ดหมั่นโถว เพนตากอนเมคอัพเลสเบี้ยน', now(), now(), 30000, now(), '29536bf0-6fab-4257-be44-463b46a1388e', null);

insert into fdn_projects (fdn_project_uuid, fp_name, start_date, end_date, goal, create_date, fdn_uuid, resource_uuid)
values ('62f9fb70-8ab0-4ae6-a1af-f55d76a88bad', 'จิตพิสัยเพียว มวลชนคัตเอาต์เนิร์สเซอรี่', now(), now(), 20000, now(), 'cd4ea7b8-b5e8-418e-abbf-4b735a58c374', null);

insert into fdn_projects (fdn_project_uuid, fp_name, start_date, end_date, goal, create_date, fdn_uuid, resource_uuid)
values ('a2ea259a-84c4-4aff-baf8-42a76368aadb', 'โซนี่ชาร์จเบอร์รีสหรัฐ แอคทีฟ สเปกก๊วน', now(), now(), 65000, now(), '77ae5dd0-bf5a-408f-bd47-afe974687233', null);

insert into fdn_projects (fdn_project_uuid, fp_name, start_date, end_date, goal, create_date, fdn_uuid, resource_uuid)
values ('7b17238a-8c41-42a9-8b9a-b6bc742fd0f4', 'เช็งเม้งคอมเมนท์เทปซูฮกโดมิโน บิล', now(), now(), 82000, now(), 'c2fcddbd-3640-418b-be2b-36c165f541b7', null);


delete from fdn_project_target_categories where fdn_project_uuid in ('43a047f7-55c2-49cc-9aa2-19527da04727', 'cef1b5a2-fc05-4405-8c1e-95ee06ea97ec', '62f9fb70-8ab0-4ae6-a1af-f55d76a88bad', 'a2ea259a-84c4-4aff-baf8-42a76368aadb', '7b17238a-8c41-42a9-8b9a-b6bc742fd0f4');

insert into fdn_project_target_categories (fdn_project_uuid, target_category_id)
values ('43a047f7-55c2-49cc-9aa2-19527da04727', '1');

insert into fdn_project_target_categories (fdn_project_uuid, target_category_id)
values ('43a047f7-55c2-49cc-9aa2-19527da04727', '4');

insert into fdn_project_target_categories (fdn_project_uuid, target_category_id)
values ('cef1b5a2-fc05-4405-8c1e-95ee06ea97ec', '4');

insert into fdn_project_target_categories (fdn_project_uuid, target_category_id)
values ('cef1b5a2-fc05-4405-8c1e-95ee06ea97ec', '7');

insert into fdn_project_target_categories (fdn_project_uuid, target_category_id)
values ('62f9fb70-8ab0-4ae6-a1af-f55d76a88bad', '7');

insert into fdn_project_target_categories (fdn_project_uuid, target_category_id)
values ('a2ea259a-84c4-4aff-baf8-42a76368aadb', '3');

insert into fdn_project_target_categories (fdn_project_uuid, target_category_id)
values ('a2ea259a-84c4-4aff-baf8-42a76368aadb', '11');

insert into fdn_project_target_categories (fdn_project_uuid, target_category_id)
values ('7b17238a-8c41-42a9-8b9a-b6bc742fd0f4', '8');


delete from fdn_categories where fdn_uuid in ('949526a8-893e-41af-a222-abd7dbfb5fac', '29536bf0-6fab-4257-be44-463b46a1388e', 'cd4ea7b8-b5e8-418e-abbf-4b735a58c374', '77ae5dd0-bf5a-408f-bd47-afe974687233', 'c2fcddbd-3640-418b-be2b-36c165f541b7');

insert into fdn_categories (fdn_uuid, category_id)
values ('949526a8-893e-41af-a222-abd7dbfb5fac', '1');

insert into fdn_categories (fdn_uuid, category_id)
values ('29536bf0-6fab-4257-be44-463b46a1388e', '11');

insert into fdn_categories (fdn_uuid, category_id)
values ('cd4ea7b8-b5e8-418e-abbf-4b735a58c374', '8');

insert into fdn_categories (fdn_uuid, category_id)
values ('77ae5dd0-bf5a-408f-bd47-afe974687233', '5');

insert into fdn_categories (fdn_uuid, category_id)
values ('c2fcddbd-3640-418b-be2b-36c165f541b7', '9');


delete from fdn_posts where fdn_post_uuid in ('c2bbd3ec-8bcc-415c-b9c8-494b3703645c', '798d8c2d-d50a-4ef8-95cb-bee978ac4127', '35181b43-5be0-4bf6-b205-fe193ce4523b', '81ebf3e5-b29b-4311-b22f-81d937faf116', '1e68e3a0-247f-4fd1-b265-f4e05d50ea3c', '8dc866f8-bf4d-48c5-8aa3-36e2e5f9f39e');

insert into fdn_posts (fdn_post_uuid, post_title, post_detail, create_date, resource_uuid, fdn_uuid)
values ('c2bbd3ec-8bcc-415c-b9c8-494b3703645c', 'สภากาชาดไทยจับมือองค์กรชั้นนำร่วมพาประเทศไทยเข้าสู่นวัตกรรมส่งเสริมความยั่งยืนวงการแพทย์', 'จากการ์ตูน ตำรวจสาวป้อมยามตอนสิบฉากที่เด็กทารกเสียชีวิตเพราะรถชนแล้วหลุดออกมาจากรถออกมากระแทก', now(), null, '949526a8-893e-41af-a222-abd7dbfb5fac');

insert into fdn_posts (fdn_post_uuid, post_title, post_detail, create_date, resource_uuid, fdn_uuid)
values ('798d8c2d-d50a-4ef8-95cb-bee978ac4127', 'ไรเฟิลแฟกซ์คาแรคเตอร์ม้านั่ง กระดี๊กระด๊าแป๋ว นาฏยศาลาแตงโมเคส แฟรีตรวจสอบซาดิ', 'แมมโบ้จุ๊ย แฮนด์ซาฟารีแฟกซ์รุสโซ แดนเซอร์บร็อกโคลีป๊อก เซลส์แมนไพลินแบล็ค มหาอุปราชาเจ๊ ช็อต เอฟเฟ็กต์ หลินจือ ไพลินออสซี่แจ๊กพ็อต คูลเลอร์', now(), null, '29536bf0-6fab-4257-be44-463b46a1388e');

insert into fdn_posts (fdn_post_uuid, post_title, post_detail, create_date, resource_uuid, fdn_uuid)
values ('35181b43-5be0-4bf6-b205-fe193ce4523b', 'ซากุระหลวงปู่ ราเมน แชเชือน วโรกาสอันตรกิริยารูบิก', 'แคร็กเกอร์ ไฮไลท์วาทกรรม ลีกโชห่วย แคนยอนมิลค์เอเซียเมี่ยงคำตังค์ โบว์คอนเซ็ปต์ หลวงปู่ไมค์โพสต์กิฟท์แรงผลัก แกรนด์แฟนตาซีอัลตรา พูลอิมพีเรียลแหววแม็กกาซีนมาร์ก คอนโดโก๊ะนิวแอคทีฟก๋ากั่น', now(), null, 'cd4ea7b8-b5e8-418e-abbf-4b735a58c374');

insert into fdn_posts (fdn_post_uuid, post_title, post_detail, create_date, resource_uuid, fdn_uuid)
values ('81ebf3e5-b29b-4311-b22f-81d937faf116', 'บูมเวอร์ธุหร่ำคอนเซปต์พงษ์ คองเกรสหล่อฮังก้วยรีโมต', 'โปรเจกเตอร์ความหมายจูน ชนะเลิศสแล็กสปายม้ง แบดจตุคามดิกชันนารีหน่อมแน้มบอดี้ เบนโลม้งเทวาธิราชจิตเภท เช็งเม้งคอมเมนท์เทปซูฮกโดมิโน บิล สุนทรีย์ภควัมปติไฟแนนซ์ เวิร์ลด์ อุปสงค์', now(), null, '77ae5dd0-bf5a-408f-bd47-afe974687233');

insert into fdn_posts (fdn_post_uuid, post_title, post_detail, create_date, resource_uuid, fdn_uuid)
values ('1e68e3a0-247f-4fd1-b265-f4e05d50ea3c', 'ลามะคอปเตอร์ป่าไม้ ไฮไลต์เห็นด้วยโก๊ะพาสปอร์ตคันธาระ', 'ยาวีสตูดิโอแครอทเซ็นทรัลจิ๊ก จิตพิสัยเพียว มวลชนคัตเอาต์เนิร์สเซอรี่ โซนี่ชาร์จเบอร์รีสหรัฐ แอคทีฟ สเปกก๊วน โพสต์แชมพูแพตเทิร์น', now(), null, 'c2fcddbd-3640-418b-be2b-36c165f541b7');

insert into fdn_posts (fdn_post_uuid, post_title, post_detail, create_date, resource_uuid, fdn_uuid)
values ('8dc866f8-bf4d-48c5-8aa3-36e2e5f9f39e', 'แมมโบ้จุ๊ย แฮนด์ซาฟารีแฟกซ์รุสโซ แดนเซอร์บร็อกโคลีป๊อก', 'บว์คอนเซ็ปต์ หลวงปู่ไมค์โพสต์กิฟท์แรงผลัก แกรนด์แฟนตาซีอัลตรา พูลอิมพีเรียลแหววแม็กกาซีนมาร์ก คอนโดโก๊ะนิวแอคทีฟก๋ากั่น ตัวเองไวกิ้งแดนซ์ซัพพลายสุนทรีย์ ไชน่านาฏยศาลา', now(), null, 'c2fcddbd-3640-418b-be2b-36c165f541b7');


delete from user_posts where user_post_uuid in ('52e94ee8-7da2-4154-ba73-1aff4600fdd1', 'ae545ccb-c505-420d-8883-c52bf942c8a5');

insert into user_posts (user_post_uuid, post_title, post_detail, create_date, user_uuid, resource_uuid)
values ('52e94ee8-7da2-4154-ba73-1aff4600fdd1', 'สภากาชาดไทยจับมือองค์กรชั้นนำร่วมพา', 'ไรเฟิลแฟกซ์คาแรคเตอร์ม้านั่ง กระดี๊กระด๊าแป๋ว นาฏยศาลาแตงโมเคส แฟรีตรวจสอบซาดิสต์ความหมายบ๊วย อ่วมฮาราคีรีฮาราคีรี โกะเซ็กซี่ ยาวีสตูดิโอแครอทเซ็นทรัลจิ๊ก จิตพิสัยเพียว', now(), '99a6a0ed-7668-44f4-be7d-8d724fc1aa73', null);

insert into user_posts (user_post_uuid, post_title, post_detail, create_date, user_uuid, resource_uuid)
values ('ae545ccb-c505-420d-8883-c52bf942c8a5', 'สภากาชาดไทยจับมือองค์กรชั้นนำร่วมพา', 'ไรเฟิลแฟกซ์คาแรคเตอร์ม้านั่ง กระดี๊กระด๊าแป๋ว นาฏยศาลาแตงโมเคส แฟรีตรวจสอบซาดิสต์ความหมายบ๊วย อ่วมฮาราคีรีฮาราคีรี โกะเซ็กซี่ ยาวีสตูดิโอแครอทเซ็นทรัลจิ๊ก จิตพิสัยเพียว', now(), '99a6a0ed-7668-44f4-be7d-8d724fc1aa73', null);

alter table fdns_resources_documents add column create_date timestamp;

ALTER TABLE foundations ADD COLUMN approval VARCHAR(255) DEFAULT NULL;

ALTER TABLE foundations ADD COLUMN create_date TIMESTAMP DEFAULT NULL ;

UPDATE foundations SET approval ='qwanjai_admin' WHERE foundations."status" ='APPROVED';

CREATE TABLE IF NOT EXISTS fdn_rejected (
	fdn_rejected_uuid VARCHAR (50) NOT NULL,
	fdn_uuid VARCHAR (50) NOT NULL,
	detail TEXT NOT NULL ,
	create_date TIMESTAMP ,
    PRIMARY KEY (fdn_rejected_uuid),
  FOREIGN KEY (fdn_uuid)
      REFERENCES foundations (fdn_uuid));