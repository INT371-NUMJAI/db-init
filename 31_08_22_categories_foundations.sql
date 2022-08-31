delete from categories where category_id in ('1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11');

insert into categories values ('1', 'การแพทย์');
insert into categories values ('2', 'การศึกษา');
insert into categories values ('3', 'เด็กและสตรี');
insert into categories values ('4', 'บรรเทาสาธารณะภัย');
insert into categories values ('5', 'ผู้พิการ');
insert into categories values ('6', 'ผู้สูงอายุ');
insert into categories values ('7', 'พัฒนาชุมชน');
insert into categories values ('8', 'ศิลปะและวัฒนธรรม');
insert into categories values ('9', 'สัตว์');
insert into categories values ('10', 'สิ่งแวดล้อม');
insert into categories values ('11', 'สิทธิมนุษยชน');


delete from foundations where fdn_uuid in ('949526a8-893e-41af-a222-abd7dbfb5fac', '29536bf0-6fab-4257-be44-463b46a1388e', 'cd4ea7b8-b5e8-418e-abbf-4b735a58c374');

insert into foundations
(fdn_uuid, "name", address_detail, sub_district, district, province, postalcode, founder_name, fdn_detail, fdn_size, establish_date, email, contact_num, status, resource_uuid)
values ('949526a8-893e-41af-a222-abd7dbfb5fac', 'มูลนิธิกระจกเงา', 'เลขที่ 191 ซอยวิภาวดี 62 (แยก 4-7) ถนนวิภาวดีรังสิต', 'ตลาดบางเขน', 'หลักสี่', 'กรุงเทพมหานคร', '10210', 'นายสมบัติ บุญงามอนงค์', 'มูลนิธิกระจกเงา คือ องค์กรพัฒนาเอกชนที่ทำงานเกี่ยวกับการพัฒนาสังคม หลายด้าน ได้แก่ งานด้านสิทธิมนุษยชน งานด้านสื่อและเทคโนโลยีสารสนเทศ งานพัฒนาอาสาสมัครและการแบ่งปันทรัพยากร เพื่อเพิ่มศักยภาพใน การเรียนรู้และการใช้ชีวิต โดยมีพื้นที่ปฏิบัติงานทั้งบนสังคมออนไลน์ (internet) สังคมเมืองและสังคมชนบท โดยทำหน้าที่เป็นกระจกเงา ที่สะท้อนเรื่องราว ความเป็นจริงของสังคมและให้ความช่วยเหลือผู้ที่ได้รับผล กระทบจาก การเปลี่ยนแปลงของสังคม ด้วยวิธีคิด คือ การสร้างคนและสร้างนวัตกรรม สร้างความมเปลี่ยนแปลงแก่สังคม', 'ใหญ่', '2534', 'donate@mirror.or.th', '061-9091840', 'PENDING', NULL);

insert into foundations
(fdn_uuid, "name", address_detail, sub_district, district, province, postalcode, founder_name, fdn_detail, fdn_size, establish_date, email, contact_num, status, resource_uuid)
values ('29536bf0-6fab-4257-be44-463b46a1388e', 'มูลนิธิเพื่อเด็กและสตรี', 'เลขที่ 000 ซอยกจค 99  ถนน abc', 'เอบีซี', 'ฟฟหกดเาสว', 'กรุงเทพมหานคร', '00000', 'นายอนงค์ คนดี', 'สจ๊วตตาปรือ มายาคติจูนฟลุทถ่ายทำสะบึมส์ อยุติธรรมเห่ยสามช่าไฮแจ็ค เนิร์สเซอรี่ผลักดันเพทนาการโปรเจกเตอร์สกาย ทัวร์กีวี จีดีพีแมมโบ้เซอร์วิสวาทกรรมฮัม อุตสาหการซังเตออโต้รีโมท แซว ซื่อบื้อ มยุราภิรมย์ซูเปอร์แชมพู เฮียวันเวย์ฮากกา วาไรตี้ซื่อบื้อโปรดิวเซอร์ซันตาคลอสฮิปฮอป พุดดิ้งแรงผลักโอเพ่นไฮไลต์ ลิสต์ สมาพันธ์ แอนด์ป๋าคอนแทคชะโนดกู๋', 'เล็ก', '2544', 'foundation@gmail.com', '0800000000', 'APPROVED', NULL);

insert into foundations
(fdn_uuid, "name", address_detail, sub_district, district, province, postalcode, founder_name, fdn_detail, fdn_size, establish_date, email, contact_num, status, resource_uuid)
values ('cd4ea7b8-b5e8-418e-abbf-4b735a58c374', 'มูลนิธิสัตว์โลกน่ารัก', '24/56 Bang Na-Trat Rd, Tambon Bang Sao Thong, Amphoe Bang Sao Thong, Chang Wat Samut Prakan 10540', 'ตลาดบางบาง', 'หลักหน่วย', 'กรุงเทพมหานคร', '22202', 'นายประเสิรฐ จัง', 'โบรกเกอร์เซ็นเตอร์ไฟลท์โชห่วย วิลเลจอยุติธรรมแฟลช อุปการคุณ สันทนาการหลินจือโชห่วย ทัวร์นาเมนท์ฮ่องเต้หลวงตาแหววพงษ์ เซอร์ไพรส์ดัมพ์ คำตอบพาสเจอร์ไรส์ เซ็นทรัลน็อกจูนฮิปโปเทเลกราฟ พาสปอร์ตโค้กยิวฟีดฮัม เกย์ไฟต์ปิยมิตรมาร์กแจ็กเก็ต ลาเต้ แคมเปญ คาเฟ่คอร์ปแยมโรลเบนโตะบ๊อกซ์ แมนชั่นปักขคณนาวานิลา คาแร็คเตอร์แฟล็ต ปูอัด', 'ใหญ่', '2499', 'dee@gmail.com', '0812345678', 'REJECTED', NULL);


