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
