-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('buddypress_learndash_plugin_options', 'bp-active-components');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sfwd-quizzes', 'bp_course_group', '_sfwd-courses', '_sfwd-course_progress', 'course_id', 'lesson_id', '_sfwd-lessons', 'attached_course_id', '_sfwd-topic', 'attached_lesson_id', '_viewProfileStatistics');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sfwd-quizzes', 'bp_course_group', '_sfwd-courses', '_sfwd-course_progress', 'course_id', 'lesson_id', '_sfwd-lessons', 'attached_course_id', '_sfwd-topic', 'attached_lesson_id', '_viewProfileStatistics');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sfwd-quizzes', 'bp_course_group', '_sfwd-courses', '_sfwd-course_progress', 'course_id', 'lesson_id', '_sfwd-lessons', 'attached_course_id', '_sfwd-topic', 'attached_lesson_id', '_viewProfileStatistics');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sfwd-quizzes', 'bp_course_group', '_sfwd-courses', '_sfwd-course_progress', 'course_id', 'lesson_id', '_sfwd-lessons', 'attached_course_id', '_sfwd-topic', 'attached_lesson_id', '_viewProfileStatistics');

