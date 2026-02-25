-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_quiz_passmark', 'grade', '_lesson_course');
DELETE FROM wp_usermeta WHERE meta_key IN ('_quiz_passmark', 'grade', '_lesson_course');
DELETE FROM wp_termmeta WHERE meta_key IN ('_quiz_passmark', 'grade', '_lesson_course');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_quiz_passmark', 'grade', '_lesson_course');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'sensei_completed_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'sensei_completed_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'sensei_completed_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'sensei_completed_%';

