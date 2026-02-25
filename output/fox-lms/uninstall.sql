-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fox_lms_quiz_integrations', 'fox_lms_db_version', 'extras_badges_trending_icon', 'foxlms_general_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'courseId', 'course_builder_data', 'course_sections', '_foxlms_lesson_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'courseId', 'course_builder_data', 'course_sections', '_foxlms_lesson_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'courseId', 'course_builder_data', 'course_sections', '_foxlms_lesson_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'courseId', 'course_builder_data', 'course_sections', '_foxlms_lesson_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ld_course_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ld_course_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ld_course_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ld_course_%';

