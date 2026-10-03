-- =====================================================
-- مشروع قاعدة بيانات مدرسة التميز للتعليم الثانوي
-- Tamayoz High School Database Project
-- =====================================================

-- إنشاء قاعدة البيانات الخاصة بالمدرسة
CREATE DATABASE tamayozschool;

-- تحديد قاعدة البيانات للعمل عليها
USE tamayozschool;


-- =====================================================
-- 1) إنشاء الجداول
-- =====================================================

-- إنشاء جدول المواد الدراسية
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    subject_name VARCHAR(50) NOT NULL
);

-- إنشاء جدول المعلمين
CREATE TABLE teachers (
    teacher_id INT PRIMARY KEY AUTO_INCREMENT,
    teacher_name VARCHAR(50),
    birth_date DATE,
    gender VARCHAR(1) CHECK (gender IN ('F','M')),
    email VARCHAR(50),
    office_number VARCHAR(20)
);

-- إنشاء جدول الطلاب
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(50),
    birth_date DATE,
    gender VARCHAR(1) CHECK (gender IN ('F','M')),
    enrollment_date DATE,
    email VARCHAR(50),
    level INT CHECK (level BETWEEN 1 AND 6),
    track VARCHAR(10) CHECK (track IN ('علمي','إنساني')),
    gpa DECIMAL(5,2)
);


-- =====================================================
-- 2) عرض الجداول المتاحة في قاعدة البيانات
-- =====================================================

SHOW TABLES;


-- =====================================================
-- 3) إدخال البيانات
-- =====================================================

-- إدخال بيانات المواد (6 مواد)
INSERT INTO subjects (subject_name) VALUES
('Math'),
('quran'),
('english'),
('sports'),
('computer'),
('arabic');

-- إدخال بيانات المعلمين (10 معلمين)
INSERT INTO teachers (teacher_name, birth_date, gender, email, office_number) VALUES
('nora',   '2001-01-13', 'F', 'nora.com',   '120'),
('saad',   '2002-03-29', 'M', 'saad.com',   '123'),
('fahad',  '2009-02-22', 'M', 'fahad.com',  '333'),
('ali',    '2002-09-19', 'M', 'ali.com',    '221'),
('turki',  '2004-06-19', 'M', 'turki.com',  '121'),
('sarah',  '2003-05-11', 'F', 'sarah.com',  '765'),
('amirah', '2008-09-22', 'F', 'amirah.com', '331'),
('fatima', '2010-09-01', 'F', 'fatima.com', '112'),
('easa',   '2001-09-22', 'M', 'easa.com',   '322'),
('karim',  '1999-09-12', 'M', 'karem.com',  '888');

-- إدخال بيانات الطلاب (31 طالبًا)
INSERT INTO students (student_name, birth_date, gender, enrollment_date, email, level, track, gpa) VALUES
('ali khalid',         '2010-09-11', 'M', '2015-01-11', 'ali.khalid@example.com',         1, 'علمي',   95.10),
('karem saad',         '2010-12-22', 'M', '2016-02-10', 'karim.com',                      2, 'علمي',   90.12),
('turki ali',          '2010-11-20', 'M', '2017-02-10', 'turkiali.com',                   2, 'إنساني', 88.12),
('rajeh saaed',        '2009-11-12', 'M', '2016-12-13', 'rajeh.com',                      1, 'علمي',   82.42),
('nabil saad',         '2009-09-22', 'M', '2016-02-10', 'nabil.com',                      2, 'علمي',   98.12),
('eid nader',          '2011-09-24', 'M', '2013-02-11', 'eidn.com',                       2, 'إنساني', 76.12),
('nora turki',         '2009-11-20', 'F', '2016-02-10', 'nori88.com',                     1, 'إنساني', 91.17),
('sarah abdullah',     '2008-09-28', 'F', '2011-09-12', 'sori.com',                       2, 'علمي',   92.88),
('sami saad',          '1999-09-22', 'M', '2007-10-10', 'sami.com',                       1, 'إنساني', 98.10),
('majid farhan',       '2009-02-21', 'M', '2016-02-14', 'majid.com',                      1, 'علمي',   87.90),
('rakan badi',         '1998-02-22', 'M', '2016-02-10', 'rakan.com',                      2, 'علمي',   92.12),
('easa lafe',          '2012-10-22', 'M', '2016-02-10', 'easa.com',                       1, 'إنساني', 88.12),
('kadi thamer',        '2002-12-22', 'M', '2016-08-12', 'ksdsa.com',                      1, 'إنساني', 90.12),
('saeed naje',         '2000-02-21', 'M', '2010-09-19', 'naje.com',                       2, 'علمي',   96.02),
('abdullah saad',      '2008-02-03', 'M', '2017-01-11', 'bedoo.com',                      2, 'إنساني', 87.62),
('ahmed ali',          '2008-05-14', 'M', '2017-01-15', 'ahmed.ali@example.com',          2, 'علمي',   91.45),
('sara mohammed',      '2008-08-22', 'F', '2017-01-18', 'sara.mohammed@example.com',      2, 'إنساني', 88.73),
('omar khalid',        '2007-11-03', 'M', '2016-09-12', 'omar.khalid@example.com',        3, 'علمي',   94.21),
('noura saad',         '2008-01-27', 'F', '2017-01-10', 'noura.saad@example.com',         2, 'إنساني', 85.67),
('faisal abdullah',    '2007-06-19', 'M', '2016-09-20', 'faisal.abdullah@example.com',    3, 'علمي',   89.34),
('reem ahmed',         '2008-10-11', 'F', '2017-02-05', 'reem.ahmed@example.com',         2, 'إنساني', 92.18),
('yousef salem',       '2007-03-25', 'M', '2016-09-08', 'yousef.salem@example.com',       3, 'علمي',   87.56),
('lama fahad',         '2008-07-09', 'F', '2017-01-22', 'lama.fahad@example.com',         2, 'إنساني', 90.82),
('saad hassan',        '2007-12-16', 'M', '2016-09-14', 'saad.hassan@example.com',        3, 'علمي',   83.49),
('mariam ali',         '2008-04-02', 'F', '2017-01-12', 'mariam.ali@example.com',         2, 'إنساني', 95.12),
('khalid saad',        '2007-09-28', 'M', '2016-09-25', 'khalid.saad@example.com',        3, 'علمي',   86.77),
('hala mohammed',      '2008-02-18', 'F', '2017-01-30', 'hala.mohammed@example.com',      2, 'إنساني', 89.65),
('abdulrahman omar',   '2007-05-07', 'M', '2016-09-11', 'abdulrahman.omar@example.com',   3, 'علمي',   93.08),
('shahad khalid',      '2008-09-13', 'F', '2017-02-12', 'shahad.khalid@example.com',      2, 'إنساني', 84.91),
('turki fahad',        '2007-02-21', 'M', '2016-09-18', 'turki.fahad@example.com',        3, 'علمي',   91.76),
('danah saad',         '2008-06-30', 'F', '2017-01-25', 'danah.saad@example.com',         2, 'إنساني', 87.23);


-- =====================================================
-- 4) عرض محتويات جميع الجداول
-- =====================================================

SELECT * FROM subjects;
SELECT * FROM teachers;
SELECT * FROM students;


-- =====================================================
-- 5) عرض جدول الطلاب مرتبًا تصاعديًا حسب اسم الطالب
-- =====================================================

SELECT * FROM students
ORDER BY student_name ASC;


-- =====================================================
-- 6) عرض جدول الطلاب مع اسم مستعار (Alias) لعمود اسم الطالب
-- =====================================================

SELECT student_name AS الاسم
FROM students;


-- =====================================================
-- 7) التعديل على البيانات
-- =====================================================

-- تعديل البريد الإلكتروني لأحد الطلاب
-- (القيم هنا تمثيلية؛ ضع القيم التي نفذتها فعليًا)
UPDATE students
SET email = 'new_email@example.com'
WHERE student_id = 1;

-- تعديل رقم المكتب لأحد المعلمين
UPDATE teachers
SET office_number = '999'
WHERE teacher_id = 1;


-- =====================================================
-- 8) التعديل على الجداول - تغيير اسم جدول
-- =====================================================

RENAME TABLE subjects TO courses;

-- التأكد من تغيير الاسم
SHOW TABLES;

-- عرض محتويات الجدول بعد تغيير اسمه
SELECT * FROM courses;
