-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('CSS_Sensei_Plugin_Not_Activated');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_duplicate', '_lesson_course', '_lesson_quiz', '_quiz_lesson', '_quiz_id', 'course', '_session_order', 'start_date', 'css_date', 'end_date');
DELETE FROM wp_usermeta WHERE meta_key IN ('_duplicate', '_lesson_course', '_lesson_quiz', '_quiz_lesson', '_quiz_id', 'course', '_session_order', 'start_date', 'css_date', 'end_date');
DELETE FROM wp_termmeta WHERE meta_key IN ('_duplicate', '_lesson_course', '_lesson_quiz', '_quiz_lesson', '_quiz_id', 'course', '_session_order', 'start_date', 'css_date', 'end_date');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_duplicate', '_lesson_course', '_lesson_quiz', '_quiz_lesson', '_quiz_id', 'course', '_session_order', 'start_date', 'css_date', 'end_date');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_quiz_question_order%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_quiz_question_order%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_quiz_question_order%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_quiz_question_order%';

