-- ========================================
-- 1. JOBS (ใช้ NAME_TH และ NAME_EN)
-- ========================================
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Software Engineer', 'นักพัฒนาซอฟต์แวร์'); -- ID 1
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Web Developer', 'นักพัฒนาเว็บ'); -- ID 2
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Mobile App Developer', 'นักพัฒนาแอปมือถือ'); -- ID 3
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Data Analyst', 'นักวิเคราะห์ข้อมูล'); -- ID 4
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Data Scientist', 'นักวิทยาศาสตร์ข้อมูล'); -- ID 5
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Project Manager', 'ผู้จัดการโครงการ'); -- ID 6
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Product Manager', 'ผู้จัดการผลิตภัณฑ์'); -- ID 7
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('UX/UI Designer', 'นักออกแบบ UX/UI'); -- ID 8
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('QA Tester', 'ผู้ทดสอบซอฟต์แวร์'); -- ID 9
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('System Administrator', 'ผู้ดูแลระบบ'); -- ID 10
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Network Engineer', 'วิศวกรเครือข่าย'); -- ID 11
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Graphic Designer', 'นักออกแบบกราฟิก'); -- ID 12
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Marketing Specialist', 'นักการตลาด'); -- ID 13
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Sales Representative', 'พนักงานขาย'); -- ID 14
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Customer Support', 'เจ้าหน้าที่บริการลูกค้า'); -- ID 15
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Accountant', 'นักบัญชี'); -- ID 16
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Civil Engineer', 'วิศวกรโยธา'); -- ID 17
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('IT Support', 'เจ้าหน้าที่ไอที'); -- ID 18
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Student', 'นักเรียน'); -- ID 19
INSERT INTO JOBS (NAME_EN, NAME_TH) VALUES ('Consultant', 'ที่ปรึกษา'); -- ID 20
COMMIT;

-- ========================================
-- 2. COUNTRIES (ใช้ NAME_TH และ NAME_EN)
-- ========================================
INSERT INTO COUNTRIES (NAME_EN, NAME_TH) VALUES ('Thailand', 'ประเทศไทย'); -- ID 1
INSERT INTO COUNTRIES (NAME_EN, NAME_TH) VALUES ('Japan', 'ญี่ปุ่น'); -- ID 2
COMMIT;

-- ========================================
-- 3. CITIES (ใช้ NAME_TH และ NAME_EN)
-- ========================================
-- สำหรับ Thailand (COUNTRY_ID = 1)
-- ========================================
-- 3. CITIES (77 Provinces of Thailand)
-- ========================================

-- ลบข้อมูล CITIES เก่าก่อน (เพื่อป้องกันการซ้ำซ้อนและ ID ผิดพลาดหากมีการรันสคริปต์ซ้ำ)
DELETE FROM CITIES WHERE COUNTRY_ID = 1;

-- CITIES INSERTION (COUNTRY_ID = 1 คือ Thailand)

-- ภาคกลาง
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Bangkok', 'กรุงเทพมหานคร', 1); -- ID 1
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Nonthaburi', 'นนทบุรี', 1); -- 2
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Pathum Thani', 'ปทุมธานี', 1); -- 3
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Phra Nakhon Si Ayutthaya', 'พระนครศรีอยุธยา', 1); -- 4
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Ang Thong', 'อ่างทอง', 1); -- 5
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Chai Nat', 'ชัยนาท', 1); -- 6
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Lopburi', 'ลพบุรี', 1); -- 7
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Nakhon Nayok', 'นครนายก', 1); -- 8
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Nakhon Pathom', 'นครปฐม', 1); -- 9
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Phetchaburi', 'เพชรบุรี', 1); -- 10
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Prachuap Khiri Khan', 'ประจวบคีรีขันธ์', 1); -- 11
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Ratchaburi', 'ราชบุรี', 1); -- 12
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Samut Prakan', 'สมุทรปราการ', 1); -- 13
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Samut Sakhon', 'สมุทรสาคร', 1); -- 14
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Samut Songkhram', 'สมุทรสงคราม', 1); -- 15
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Saraburi', 'สระบุรี', 1); -- 16
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Sing Buri', 'สิงห์บุรี', 1); -- 17
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Suphan Buri', 'สุพรรณบุรี', 1); -- 18

-- ภาคตะวันออก
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Chachoengsao', 'ฉะเชิงเทรา', 1); -- 19
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Chanthaburi', 'จันทบุรี', 1); -- 20
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Chonburi', 'ชลบุรี', 1); -- 21
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Prachinburi', 'ปราจีนบุรี', 1); -- 22
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Rayong', 'ระยอง', 1); -- 23
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Sa Kaeo', 'สระแก้ว', 1); -- 24
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Trat', 'ตราด', 1); -- 25

-- ภาคตะวันตก
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Kanchanaburi', 'กาญจนบุรี', 1); -- 26
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Tak', 'ตาก', 1); -- 27
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Uthai Thani', 'อุทัยธานี', 1); -- 28

-- ภาคเหนือ
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Chiang Mai', 'เชียงใหม่', 1); -- 29
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Chiang Rai', 'เชียงราย', 1); -- 30
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Kamphaeng Phet', 'กำแพงเพชร', 1); -- 31
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Lampang', 'ลำปาง', 1); -- 32
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Lamphun', 'ลำพูน', 1); -- 33
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Mae Hong Son', 'แม่ฮ่องสอน', 1); -- 34
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Nakhon Sawan', 'นครสวรรค์', 1); -- 35
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Nan', 'น่าน', 1); -- 36
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Phayao', 'พะเยา', 1); -- 37
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Phetchabun', 'เพชรบูรณ์', 1); -- 38
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Phichit', 'พิจิตร', 1); -- 39
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Phitsanulok', 'พิษณุโลก', 1); -- 40
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Phrae', 'แพร่', 1); -- 41
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Sukhothai', 'สุโขทัย', 1); -- 42
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Uttaradit', 'อุตรดิตถ์', 1); -- 43

-- ภาคตะวันออกเฉียงเหนือ (อีสาน)
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Amnat Charoen', 'อำนาจเจริญ', 1); -- 44
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Bueng Kan', 'บึงกาฬ', 1); -- 45
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Buri Ram', 'บุรีรัมย์', 1); -- 46
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Chaiyaphum', 'ชัยภูมิ', 1); -- 47
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Kalasin', 'กาฬสินธุ์', 1); -- 48
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Khon Kaen', 'ขอนแก่น', 1); -- 49
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Loei', 'เลย', 1); -- 50
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Maha Sarakham', 'มหาสารคาม', 1); -- 51
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Mukdahan', 'มุกดาหาร', 1); -- 52
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Nakhon Phanom', 'นครพนม', 1); -- 53
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Nakhon Ratchasima', 'นครราชสีมา', 1); -- 54
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Nong Bua Lamphu', 'หนองบัวลำภู', 1); -- 55
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Nong Khai', 'หนองคาย', 1); -- 56
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Roi Et', 'ร้อยเอ็ด', 1); -- 57
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Sakon Nakhon', 'สกลนคร', 1); -- 58
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Si Sa Ket', 'ศรีสะเกษ', 1); -- 59
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Surin', 'สุรินทร์', 1); -- 60
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Ubon Ratchathani', 'อุบลราชธานี', 1); -- 61
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Udon Thani', 'อุดรธานี', 1); -- 62
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Yasothon', 'ยโสธร', 1); -- 63

-- ภาคใต้
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Chumphon', 'ชุมพร', 1); -- 64
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Krabi', 'กระบี่', 1); -- 65
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Nakhon Si Thammarat', 'นครศรีธรรมราช', 1); -- 66
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Narathiwat', 'นราธิวาส', 1); -- 67
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Pattani', 'ปัตตานี', 1); -- 68
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Phang Nga', 'พังงา', 1); -- 69
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Phatthalung', 'พัทลุง', 1); -- 70
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Phuket', 'ภูเก็ต', 1); -- 71
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Ranong', 'ระนอง', 1); -- 72
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Satun', 'สตูล', 1); -- 73
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Songkhla', 'สงขลา', 1); -- 74
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Surat Thani', 'สุราษฎร์ธานี', 1); -- 75
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Trang', 'ตรัง', 1); -- 76
INSERT INTO CITIES (NAME_EN, NAME_TH, COUNTRY_ID) VALUES ('Yala', 'ยะลา', 1); -- 77

COMMIT;
-- ========================================
-- 4. USERS SAMPLE 12 คน (ใช้คอลัมน์ ROLE และ STATUS โดยตรง)
-- *PASSWORD ที่ใช้คือ Hash ของ 'password123'*
-- ========================================
-- ADMIN: ID 1
INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Somchai', 'Sukjai', 'somchai@admin.com', '$2a$10$hNRZmEilw3RzC1XV48hRK.BI39pqXh4SgyZyECOAhyg3B2OUIMEGy', 'ADMIN', '0812345678', 6, '123 Sukhumvit Rd, Bang Na', 1, 1, 'ACTIVE');

-- GENERAL USERS: ID 2 - 12
INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Somsri', 'Jaide', 'somsri@user.com', '$2a$10$wr4IgWmuMgGY/.waYcOO/etm1vszgQoK5F46LXV6AsdjOdXpw4EsW', 'GENERAL_USER', '0891234567', 1, '45/1 Ladprao Rd, Wang Thonglang', 1, 1, 'ACTIVE');

INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Songkran', 'Mesuk', 'songkran@user.com', '$2a$10$MUfxhZQu8SEKdQxjMddkGedVWWg5j5VlDDdhJ0lGrEETeNCsAIzre', 'GENERAL_USER', '0923456789', 2, '56 Nimmanhaemin Rd', 1, 2, 'ACTIVE');

INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Aom', 'Srisuk', 'aom@user.com', '$2a$10$/KJuxmW1HmaDfYLacQc6LOpnyiW7CYA.KgN2O6s61PjzRXKKpnrnG', 'GENERAL_USER', '0634567890', 8, '78 Patong Beach Rd', 1, 3, 'ACTIVE');

INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Niran', 'Chaiyaporn', 'niran@user.com', '$2a$10$/KJuxmW1HmaDfYLacQc6LOpnyiW7CYA.KgN2O6s61PjzRXKKpnrnG', 'GENERAL_USER', '0845678901', 4, '99 Silom Rd, Bang Rak', 1, 1, 'ACTIVE');

INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Suda', 'Phanumas', 'suda@user.com', '$2a$10$/KJuxmW1HmaDfYLacQc6LOpnyiW7CYA.KgN2O6s61PjzRXKKpnrnG', 'GENERAL_USER', '0956789012', 17, '200 Pattaya Beach Rd', 1, 4, 'ACTIVE');

INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Kittisak', 'Wongchai', 'kittisak@user.com', '$2a$10$/KJuxmW1HmaDfYLacQc6LOpnyiW7CYA.KgN2O6s61PjzRXKKpnrnG', 'GENERAL_USER', '0867890123', 18, '108 Thapae Gate', 1, 2, 'ACTIVE');

INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Malee', 'Suksum', 'malee@user.com', '$2a$10$/KJuxmW1HmaDfYLacQc6LOpnyiW7CYA.KgN2O6s61PjzRXKKpnrnG', 'GENERAL_USER', '0978901234', 19, '32 Kata Beach Rd', 1, 3, 'ACTIVE');

INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Preecha', 'Rattanaporn', 'preecha@user.com', '$2a$10$/KJuxmW1HmaDfYLacQc6LOpnyiW7CYA.KgN2O6s61PjzRXKKpnrnG', 'GENERAL_USER', '0689012345', 5, '321 Rama IV Rd', 1, 1, 'ACTIVE');

INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Nattapong', 'Chalerm', 'nattapong@user.com', '$2a$10$/KJuxmW1HmaDfYLacQc6LOpnyiW7CYA.KgN2O6s61PjzRXKKpnrnG', 'GENERAL_USER', '0890123456', 1, '12 Loi Kroh Rd', 1, 2, 'INACTIVE'); -- สถานะ INACTIVE

INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Siriporn', 'Manee', 'siriporn@user.com', '$2a$10$/KJuxmW1HmaDfYLacQc6LOpnyiW7CYA.KgN2O6s61PjzRXKKpnrnG', 'GENERAL_USER', '0601234567', 17, '88 Thalang Rd', 1, 3, 'ACTIVE');

INSERT INTO USERS (FIRST_NAME, LAST_NAME, EMAIL, PASSWORD, ROLE, PHONE, JOB_ID, ADDRESS, COUNTRIES_ID, CITIES_ID, STATUS)
VALUES ('Chatchai', 'Thongdee', 'chatchai@banned.com', '$2a$10$/KJuxmW1HmaDfYLacQc6LOpnyiW7CYA.KgN2O6s61PjzRXKKpnrnG', 'GENERAL_USER', '0912345678', 1, '15 Ratchadaphisek Rd', 1, 1, 'INACTIVE'); -- สถานะ INACTIVE (สมมุติเป็น BANNED)

COMMIT;

-- ========================================
-- 5. EVENT_TYPES
-- ========================================
-- เนื่องจาก DESCRIPTION ถูก ALTER เป็น VARCHAR2(200) แล้ว
INSERT INTO EVENT_TYPES (NAME, DESCRIPTION) VALUES ('Food Festival', 'งานเทศกาลอาหารและเครื่องดื่ม'); -- ID 1
INSERT INTO EVENT_TYPES (NAME, DESCRIPTION) VALUES ('Fashion Show', 'งานแฟชั่นโชว์แสดงเสื้อผ้าและแฟชั่น'); -- ID 2
INSERT INTO EVENT_TYPES (NAME, DESCRIPTION) VALUES ('Tech Expo', 'งานแสดงเทคโนโลยีใหม่ ๆ นวัตกรรมและอุปกรณ์ไอที'); -- ID 3
INSERT INTO EVENT_TYPES (NAME, DESCRIPTION) VALUES ('Music Concert', 'งานแสดงดนตรีและคอนเสิร์ตขนาดใหญ่'); -- ID 4
COMMIT;

-- ========================================
-- 6. EVENTS SAMPLE 5 งาน
-- ========================================
-- งานที่ 1: Food Festival (TYPE_ID = 1)
INSERT INTO EVENTS (NAME, DESCRIPTION, TYPE_ID, LOCATION, HOST_ORGANISATION, CREATED_BY, START_DATE, END_DATE, CONTACT_EMAIL)
VALUES (
    'Bangkok Street Food Festival 2025',
    'เทศกาลอาหารริมทางกรุงเทพฯ ปี 2025 รวบรวมร้านอาหารชื่อดังจากทั่วกรุงเทพฯ และจังหวัดใกล้เคียง พบกับเวิร์คช็อปทำอาหารจากเชฟชื่อดัง',
    1, 'สวนลุมพินี กรุงเทพฯ', 'Bangkok Event Organizers', 1,
    TO_TIMESTAMP('2025-12-10 10:00:00','YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-12-12 22:00:00','YYYY-MM-DD HH24:MI:SS'),
    'foodfest@bkkorganizers.com'
);

-- งานที่ 2: Fashion Show (TYPE_ID = 2)
INSERT INTO EVENTS (NAME, DESCRIPTION, TYPE_ID, LOCATION, HOST_ORGANISATION, CREATED_BY, START_DATE, END_DATE, CONTACT_PHONE)
VALUES (
    'Thailand International Fashion Week 2025',
    'สัปดาห์แฟชั่นนานาชาติประเทศไทย 2025 แสดงผลงานล่าสุดจากดีไซน์เนอร์ชั้นนำทั้งไทยและต่างประเทศ พร้อมสัมมนาเทรนด์แฟชั่น',
    2, 'ศูนย์ประชุมแห่งชาติสิริกิติ์ กรุงเทพฯ', 'Thai Fashion Council', 1,
    TO_TIMESTAMP('2025-12-15 09:00:00','YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-12-20 21:00:00','YYYY-MM-DD HH24:MI:SS'),
    '0212345678'
);

-- งานที่ 3: Tech Expo (TYPE_ID = 3)
INSERT INTO EVENTS (NAME, DESCRIPTION, TYPE_ID, LOCATION, HOST_ORGANISATION, CREATED_BY, START_DATE, END_DATE, CONTACT_FACEBOOK)
VALUES (
    'Thailand Tech Expo 2025',
    'งานแสดงเทคโนโลยีประเทศไทย 2025 รวบรวมเทคโนโลยีล่าสุด อุปกรณ์ไอที นวัตกรรม และซอฟต์แวร์จากบริษัทชั้นนำ มีการบรรยายและ Hackathon',
    3, 'ไบเทค บางนา', 'Tech Thailand Association', 1,
    TO_TIMESTAMP('2025-12-05 09:00:00','YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2025-12-07 18:00:00','YYYY-MM-DD HH24:MI:SS'),
    'TechExpoThailand'
);

-- งานที่ 4: Food Festival (TYPE_ID = 1)
INSERT INTO EVENTS (NAME, DESCRIPTION, TYPE_ID, LOCATION, HOST_ORGANISATION, CREATED_BY, START_DATE, END_DATE, CONTACT_EMAIL)
VALUES (
    'AEC Food Carnival 2026',
    'งานมหกรรมอาหารและเครื่องดื่มนานาชาติในภูมิภาคอาเซียน ปี 2026 รวบรวมอาหารจาก 10 ประเทศสมาชิก จัดที่อิมแพ็ค เมืองทองธานี',
    1, 'อิมแพ็ค เมืองทองธานี นนทบุรี', 'AEC Trade Promotion', 1,
    TO_TIMESTAMP('2026-05-20 10:00:00','YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-05-24 21:00:00','YYYY-MM-DD HH24:MI:SS'),
    'info@aecfoodcarnival.com'
);

-- งานที่ 5: Music Concert (TYPE_ID = 4)
INSERT INTO EVENTS (NAME, DESCRIPTION, TYPE_ID, LOCATION, HOST_ORGANISATION, CREATED_BY, START_DATE, END_DATE)
VALUES (
    'Chiang Mai Music Fest 2026',
    'เทศกาลดนตรีกลางแจ้งประจำปีของเชียงใหม่ พบกับศิลปิน T-Pop และอินดี้ชื่อดังมากมาย งานจัดที่ลานหน้าประตูท่าแพ',
    4, 'ลานหน้าประตูท่าแพ เชียงใหม่', 'Northern Sound Co.', 1,
    TO_TIMESTAMP('2026-02-14 16:00:00','YYYY-MM-DD HH24:MI:SS'),
    TO_TIMESTAMP('2026-02-15 00:00:00','YYYY-MM-DD HH24:MI:SS')
);

COMMIT;

-- ========================================
-- 7. IMAGES_CATEGORY
-- ========================================
INSERT INTO IMAGES_CATEGORY (NAME, DESCRIPTION) VALUES ('slideshow', 'ภาพสำหรับ slideshow ของงาน'); -- ID 1
INSERT INTO IMAGES_CATEGORY (NAME, DESCRIPTION) VALUES ('card', 'ภาพสำหรับแสดงใน card event'); -- ID 2
INSERT INTO IMAGES_CATEGORY (NAME, DESCRIPTION) VALUES ('detail', 'ภาพรายละเอียดงาน เช่น บรรยากาศ, โซนต่าง ๆ'); -- ID 3
INSERT INTO IMAGES_CATEGORY (NAME, DESCRIPTION) VALUES ('map', 'ภาพแผนที่หรือแผนผังงาน'); -- ID 4
INSERT INTO IMAGES_CATEGORY (NAME, DESCRIPTION) VALUES ('reward', 'รูปภาพของรางวัล'); -- ID 5

COMMIT;

-- ========================================
-- 8. IMAGES SAMPLE
-- ========================================
-- Event 1: Food FestivalINSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (1, 'bangkok_food_2025_slideshow.jpg', 1);
INSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (1, 'bangkok_food_2025_card.jpg', 2);
INSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (1, 'bangkok_food_2025_detail.jpg', 3);

-- Event 2: Fashion Show
INSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (2, 'fashion_week_2025_slideshow.jpg', 1);
INSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (2, 'fashion_week_2025_card.jpg', 2);
INSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (2, 'fashion_week_2025_detail.jpg', 3);

-- Event 3: Tech Expo
INSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (3, 'tech_expo_2025_slideshow.jpg', 1);
INSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (3, 'tech_expo_2025_card.jpg', 2);
INSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (3, 'tech_expo_2025_detail.jpg', 3);

-- Event 3: aec_food_carnival
INSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (4, 'aec_food_carnival_2026_slideshow.jpg', 1);
INSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (4, 'aec_food_carnival_2026_card_.jpg', 2);
INSERT INTO IMAGES (EVENT_ID, IMG_PATH_EV, CATEGORY_ID) VALUES (4, 'aec_food_carnival_2026_detail.jpg', 3);

COMMIT;

-- ========================================
-- 9. USER_EVENTS SAMPLE (การลงทะเบียนเข้าร่วมงาน)
-- *ตาราง MEMBER_EVENT_ROLES ถูกยุบรวมเป็นคอลัมน์ EVENT_ROLE ในตาราง USER_EVENTS แล้ว*
-- ========================================
INSERT INTO USER_EVENTS (USER_ID, EVENT_ID, EVENT_ROLE, STATUS) VALUES (1, 1, 'ORGANIZER', 'REGISTRATION'); -- ID 1
INSERT INTO USER_EVENTS (USER_ID, EVENT_ID, EVENT_ROLE, STATUS) VALUES (2, 2, 'ORGANIZER', 'REGISTRATION'); -- ID 2

-- User 2 (Somsri) ลงทะเบียนเป็น VISITOR ใน Event 1 (Food Festival) และ Event 3 (Tech Expo)
INSERT INTO USER_EVENTS (USER_ID, EVENT_ID, EVENT_ROLE, STATUS) VALUES (2, 1, 'STAFF', 'REGISTRATION'); -- ID 1
INSERT INTO USER_EVENTS (USER_ID, EVENT_ID, EVENT_ROLE, STATUS) VALUES (2, 3, 'VISITOR', 'REGISTRATION'); -- ID 2

-- User 3 (Songkran) ลงทะเบียนเป็น STAFF ใน Event 2 (Fashion Show) และ CHECK_IN แล้ว
INSERT INTO USER_EVENTS (USER_ID, EVENT_ID, EVENT_ROLE, STATUS)
VALUES (3, 2, 'VISITOR', 'REGISTRATION'); -- ID 3

-- User 4 (Aom) ลงทะเบียนเป็น ORGANIZER ใน Event 4 (AEC Food Carnival)
INSERT INTO USER_EVENTS (USER_ID, EVENT_ID, EVENT_ROLE) VALUES (4, 4, 'ORGANIZER'); -- ID 4

-- User 5 (Niran) ลงทะเบียนเป็น VISITOR ใน Event 1 และ CHECK_IN แล้ว
INSERT INTO USER_EVENTS (USER_ID, EVENT_ID, EVENT_ROLE, STATUS, CHECK_IN_AT)
VALUES (5, 1, 'VISITOR', 'CHECK_IN', TO_TIMESTAMP('2025-12-10 11:15:00','YYYY-MM-DD HH24:MI:SS')); -- ID 5

-- User 1 (Admin) ลงทะเบียนเป็น EXBIHITOR ใน Event 3
INSERT INTO USER_EVENTS (USER_ID, EVENT_ID, EVENT_ROLE) VALUES (1, 3, 'EXBIHITOR'); -- ID 6

-- User 6 (Suda) ลงทะเบียนเป็น VISITOR ใน Event 5
INSERT INTO USER_EVENTS (USER_ID, EVENT_ID, EVENT_ROLE) VALUES (6, 5, 'VISITOR'); -- ID 7
COMMIT;

-- ========================================
-- 10. SURVEYS SAMPLE (ใช้ POINTS 10)
-- *แก้ไข: ต้องใส่เครื่องหมายจุลภาค (,) หลัง Primary Key และหลัง NAME*
-- ========================================
-- Event 1: Food Festival
INSERT INTO SURVEYS (NAME, DESCRIPTION, EVENT_ID, POINTS, SURVEYS_TYPE)
VALUES ('Pre-Survey Food 2025', 'แบบสำรวจความสนใจก่อนเข้าร่วมงาน', 1, 10, 'PRE_VISITOR'); -- ID 1

INSERT INTO SURVEYS (NAME, DESCRIPTION, EVENT_ID, POINTS, SURVEYS_TYPE)
VALUES ('Post-Survey Food 2025', 'แบบสำรวจความพึงพอใจหลังจบงาน', 1, 20, 'POST_VISITOR'); -- ID 2

-- Event 3: Tech Expo
INSERT INTO SURVEYS (NAME, DESCRIPTION, EVENT_ID, POINTS, SURVEYS_TYPE)
VALUES ('Pre-Survey Tech 2025', 'แบบสำรวจความคาดหวังก่อนงาน Tech Expo', 3, 15, 'PRE_VISITOR'); -- ID 3

COMMIT;

-- ========================================
-- 11. QUESTIONS SAMPLE (สำหรับ Survey ID 1 และ 3)
-- ========================================
-- สำหรับ Survey 1 (Pre-Survey Food 2025)
INSERT INTO QUESTIONS (SURVEY_ID, QUESTION, ANSWER_1, ANSWER_2, ANSWER_3, ANSWER_4, QUESTION_TYPE)
VALUES (1, 'ท่านสนใจอาหารประเภทใดมากที่สุด?', 'อาหารไทย', 'อาหารนานาชาติ', 'อาหารฟิวชัน', 'เครื่องดื่ม/ของหวาน', 'SINGLE'); -- ID 1

INSERT INTO QUESTIONS (SURVEY_ID, QUESTION, ANSWER_1, ANSWER_2, ANSWER_3, ANSWER_4, ANSWER_5, QUESTION_TYPE)
VALUES (1, 'ท่านต้องการเข้าร่วมกิจกรรมใดบ้าง?', 'เวิร์คช็อปทำอาหาร', 'ชมการสาธิต', 'มินิคอนเสิร์ต', 'ถ่ายภาพ', 'ช้อปปิ้ง', 'MULTIPLE'); -- ID 2

-- สำหรับ Survey 3 (Pre-Survey Tech 2025)
INSERT INTO QUESTIONS (SURVEY_ID, QUESTION, ANSWER_1, ANSWER_2, ANSWER_3, ANSWER_4, QUESTION_TYPE)
VALUES (3, 'ท่านสนใจเทคโนโลยีใดเป็นพิเศษ?', 'AI และ Machine Learning', 'Blockchain/Web3', 'IoT และ Smart Devices', 'Cyber Security', 'SINGLE'); -- ID 3

INSERT INTO QUESTIONS (SURVEY_ID, QUESTION, ANSWER_1, ANSWER_2, ANSWER_3, QUESTION_TYPE)
VALUES (3, 'ข้อเสนอแนะสำหรับ Hackathon?', 'ต้องการหัวข้อที่ท้าทาย', 'ต้องการโค้ชที่เชี่ยวชาญ', 'ต้องการของรางวัลใหญ่ขึ้น', 'SUGGESTION'); -- ID 4
COMMIT;

-- ========================================
-- 12. RESPONSE_ANSWER SAMPLE
-- ========================================
-- User 5 (Niran - ID 5) ตอบ Pre-Survey Food (ID 1)
INSERT INTO RESPONSE_ANSWER (USER_EVENT_ID, QUESTION_ID, ANSWER, QUESTION_TYPE) VALUES (5, 1, 'อาหารนานาชาติ', 'SINGLE');
INSERT INTO RESPONSE_ANSWER (USER_EVENT_ID, QUESTION_ID, ANSWER, QUESTION_TYPE) VALUES (5, 2, 'ชมการสาธิต, ช้อปปิ้ง', 'MULTIPLE');

-- User 2 (Somsri - ID 1) ตอบ Pre-Survey Food (ID 1)
INSERT INTO RESPONSE_ANSWER (USER_EVENT_ID, QUESTION_ID, ANSWER, QUESTION_TYPE) VALUES (1, 1, 'อาหารไทย', 'SINGLE');
INSERT INTO RESPONSE_ANSWER (USER_EVENT_ID, QUESTION_ID, ANSWER, QUESTION_TYPE) VALUES (1, 2, 'เวิร์คช็อปทำอาหาร', 'MULTIPLE');

-- User 2 (Somsri - ID 2) ตอบ Pre-Survey Tech (ID 3)
INSERT INTO RESPONSE_ANSWER (USER_EVENT_ID, QUESTION_ID, ANSWER, QUESTION_TYPE) VALUES (2, 3, 'AI และ Machine Learning', 'SINGLE');
INSERT INTO RESPONSE_ANSWER (USER_EVENT_ID, QUESTION_ID, ANSWER, QUESTION_TYPE) VALUES (2, 4, 'ต้องการของรางวัลใหญ่ขึ้นและมีค่าเดินทางให้', 'SUGGESTION');

COMMIT;

-- ========================================
-- 13. EVENT_REWARDS (รางวัลในงาน)
-- *แก้ไข: เปลี่ยน REFERENCES EVENT(ID) เป็น EVENTS(ID)*
-- ========================================
-- Event 1: Food Festival
INSERT INTO EVENT_REWARD (NAME, DESCRIPTION, EVENT_ID, POINT_USED)
VALUES ('Free T-Shirt', 'เสื้อยืดลิมิเต็ดอิดิชั่นของงาน', 1, 50); -- ID 1

-- Event 3: Tech Expo
INSERT INTO EVENT_REWARD (NAME, DESCRIPTION, EVENT_ID, POINT_USED)
VALUES ('Power Bank', 'พาวเวอร์แบงค์ 10000mAh', 3, 100); -- ID 2

INSERT INTO EVENT_REWARD (NAME, DESCRIPTION, EVENT_ID, POINT_USED)
VALUES ('Coupon 500 Baht', 'คูปองส่วนลด 500 บาท สำหรับซื้อสินค้าในงาน', 3, 150); -- ID 3

COMMIT;

-- ========================================
-- 14. USER_REWARDS (การแลกรางวัลของผู้ใช้)
-- *เปลี่ยนชื่อตารางเป็น USER_REWARDS ตามโครงสร้างใหม่*
-- ========================================
-- User 5 (Niran) แลก Free T-Shirt (ID 1)
INSERT INTO USER_REWARDS (USER_ID, EVENT_REWARD_ID) VALUES (5, 1);

-- User 2 (Somsri) แลก Power Bank (ID 2)
INSERT INTO USER_REWARDS (USER_ID, EVENT_REWARD_ID) VALUES (2, 2);

COMMIT;


SELECT
  u.id AS user_id,
  u.first_name AS user_name,
  ue.event_role as role_in_event,
  e.id AS event_id,
  e.name
FROM user_events ue
JOIN users u
  ON ue.user_id = u.id
JOIN events e
  ON ue.event_id = e.id;
  
  
  
SELECT parameter, value 
FROM v$nls_parameters 
WHERE parameter IN ('NLS_DATE_FORMAT', 'NLS_TIMESTAMP_FORMAT', 'NLS_TIME_FORMAT', 'NLS_LANGUAGE');
