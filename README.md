# Tamayozschool_project_SQL

مشروع قاعدة بيانات مركزية لمدرسة **التميز للتعليم الثانوي**، منفَّذ بلغة SQL على MySQL، ويضم بيانات الطلاب والمعلمين والمواد.

A central database for a (fictional) secondary school, built with MySQL. It stores students, teachers, and subjects.

## الجداول

| الجدول | الأعمدة |
|---|---|
| `students` | `student_id`, `student_name`, `birth_date`, `gender`, `enrollment_date`, `email`, `level`, `track`, `gpa` |
| `teachers` | `teacher_id`, `teacher_name`, `birth_date`, `gender`, `email`, `office_number` |
| `subjects` | `subject_id`, `subject_name` |

> في نهاية السكربت يُغيَّر اسم الجدول `subjects` إلى `courses` بأمر `RENAME TABLE`، تنفيذًا لمتطلب تعديل اسم جدول.

## القيود المستخدمة

- `PRIMARY KEY` و`AUTO_INCREMENT` للرقم التسلسلي في كل جدول.
- `gender`: القيمتان `F` أو `M` فقط.
- `level`: من 1 إلى 6.
- `track`: `علمي` أو `إنساني`.
- `gpa`: من نوع `DECIMAL(5,2)` (المعدل من 100).

## المتطلبات المنفَّذة

- [x] استخدام التعليقات (comments) لتوضيح الأوامر
- [x] إنشاء قاعدة البيانات والجداول
- [x] عرض الجداول المتاحة (`SHOW TABLES`)
- [x] إدخال 31 طالبًا و10 معلمين و6 مواد
- [x] عرض محتويات جميع الجداول (`SELECT`)
- [x] ترتيب الطلاب تصاعديًا حسب الاسم (`ORDER BY`)
- [x] اسم مستعار لعمود اسم الطالب (`AS`)
- [x] تعديل بريد طالب ورقم مكتب معلم (`UPDATE`)
- [x] تعديل اسم جدول (`RENAME TABLE`)

## طريقة التشغيل

1. ثبّت MySQL 8.0.16 أو أحدث (قيود `CHECK` تُفرض ابتداءً من هذه النسخة).
2. افتح MySQL Workbench أو سطر الأوامر.
3. نفّذ الملف [`tamayozschool_project.sql`](tamayozschool_project.sql) كاملًا مرة واحدة على خادم لا توجد فيه قاعدة باسم `tamayozschool`.

## الأدوات

MySQL 8.0 · MySQL Workbench

> البيانات المُدخلة وهمية لأغراض التعلم.
