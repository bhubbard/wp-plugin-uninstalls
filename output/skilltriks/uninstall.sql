-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('stlms_permalinks_flushed', 'stlms_settings', 'stlms_import_data', 'stlms_notification_data');
DELETE FROM wp_options WHERE option_name LIKE '%_page_id';
DELETE FROM wp_options WHERE option_name LIKE 'stlms_notification_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('grade_percentage', 'attempted_questions', 'time_str', 'quiz_id', 'course_id', 'correct_answers', 'imports_per_page', 'total_questions', 'passing_grade');
DELETE FROM wp_usermeta WHERE meta_key IN ('grade_percentage', 'attempted_questions', 'time_str', 'quiz_id', 'course_id', 'correct_answers', 'imports_per_page', 'total_questions', 'passing_grade');
DELETE FROM wp_termmeta WHERE meta_key IN ('grade_percentage', 'attempted_questions', 'time_str', 'quiz_id', 'course_id', 'correct_answers', 'imports_per_page', 'total_questions', 'passing_grade');
DELETE FROM wp_commentmeta WHERE meta_key IN ('grade_percentage', 'attempted_questions', 'time_str', 'quiz_id', 'course_id', 'correct_answers', 'imports_per_page', 'total_questions', 'passing_grade');

