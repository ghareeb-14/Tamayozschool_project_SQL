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
    track VARCHAR(10) CHECK (track IN ('علمي','انساني')),
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

-- إدخال بيانات المعلمين (10 معلمين على الأقل)
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

-- إدخال بيانات الطلاب (30 طالب على الأقل)
-- ملاحظة: استبدل هذا القسم بالبيانات الفعلية التي أدخلتها
-- في Workbench (31 طالب)، أو صدّرها تلقائيًا عبر
-- Server > Data Export كما هو موضح في المحادثة
INSERT INTO students (student_name, birth_date, gender, enrollment_date, email, level, track, gpa) VALUES
('nora ali', '2009-09-09', 'F', '2016-09-23', 'noraali.com', 1, 'علمي', 92.00);
-- ... أضف باقي الطلاب الـ 30 هنا بنفس النمط


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

-- التأكد من التغيير
SHOW TABLES;
