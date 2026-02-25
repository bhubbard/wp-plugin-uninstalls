-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wn_bos_ld_options', 'badgeos_settings', 'learndash_settings_courses_taxonomies', 'learndash_settings_topics_taxonomies', 'learndash_settings_lessons_taxonomies', 'learndash_settings_quizzes_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_id', 'lesson_id', 'course_id', '_badgeos_count', '_badgeos_learndash_trigger', '_badgeos_learndash_object_id', '_badgeos_learndash_object_arg1', '_badgeos_learndash_object_arg2');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_id', 'lesson_id', 'course_id', '_badgeos_count', '_badgeos_learndash_trigger', '_badgeos_learndash_object_id', '_badgeos_learndash_object_arg1', '_badgeos_learndash_object_arg2');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_id', 'lesson_id', 'course_id', '_badgeos_count', '_badgeos_learndash_trigger', '_badgeos_learndash_object_id', '_badgeos_learndash_object_arg1', '_badgeos_learndash_object_arg2');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_id', 'lesson_id', 'course_id', '_badgeos_count', '_badgeos_learndash_trigger', '_badgeos_learndash_object_id', '_badgeos_learndash_object_arg1', '_badgeos_learndash_object_arg2');

