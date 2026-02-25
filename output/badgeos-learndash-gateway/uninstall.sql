-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wblg_options', 'learndash_settings_courses_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sfwd-courses', '_bosld_buy_course_credits', '_bos_ld_unlock_lesson_points', '_point_plural_name', '_bosld_excluded_course_point_types', '_bosld_excluded_lesson_point_types', 'course_points', '_bosld_unlocked_lessons');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sfwd-courses', '_bosld_buy_course_credits', '_bos_ld_unlock_lesson_points', '_point_plural_name', '_bosld_excluded_course_point_types', '_bosld_excluded_lesson_point_types', 'course_points', '_bosld_unlocked_lessons');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sfwd-courses', '_bosld_buy_course_credits', '_bos_ld_unlock_lesson_points', '_point_plural_name', '_bosld_excluded_course_point_types', '_bosld_excluded_lesson_point_types', 'course_points', '_bosld_unlocked_lessons');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sfwd-courses', '_bosld_buy_course_credits', '_bos_ld_unlock_lesson_points', '_point_plural_name', '_bosld_excluded_course_point_types', '_bosld_excluded_lesson_point_types', 'course_points', '_bosld_unlocked_lessons');

