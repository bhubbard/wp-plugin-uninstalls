-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('csld_version', 'wn_course_schedular_general_settings', 'wn_course_schedular_course_settings', 'wn_course_schedular_lesson_settings', 'wn_course_schedular_quiz_settings', 'wn_course_schedular_topic_settings', 'course_scheduler_ld_addon_setting', 'cs_ld_addon_show_course_message', 'cs_ld_addon_hide_course_message', 'cs_ld_addon_show_lesson_message', 'cs_ld_addon_hide_lesson_message', 'cs_ld_addon_show_quiz_message', 'cs_ld_addon_hide_quiz_message', 'cs_ld_addon_show_topic_message', 'cs_ld_addon_hide_topic_message', 'csld_review_dismissed');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('course_schedule', '_sfwd-lessons', '_sfwd-quiz', '_sfwd-topic');
DELETE FROM wp_usermeta WHERE meta_key IN ('course_schedule', '_sfwd-lessons', '_sfwd-quiz', '_sfwd-topic');
DELETE FROM wp_termmeta WHERE meta_key IN ('course_schedule', '_sfwd-lessons', '_sfwd-quiz', '_sfwd-topic');
DELETE FROM wp_commentmeta WHERE meta_key IN ('course_schedule', '_sfwd-lessons', '_sfwd-quiz', '_sfwd-topic');

