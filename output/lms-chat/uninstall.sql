-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lmsc_config', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('allow_conversation', 'course_id', '_tutor_course_id_for_lesson', '_llms_parent_course', '_lesson_course', 'ir_shared_instructor_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('allow_conversation', 'course_id', '_tutor_course_id_for_lesson', '_llms_parent_course', '_lesson_course', 'ir_shared_instructor_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('allow_conversation', 'course_id', '_tutor_course_id_for_lesson', '_llms_parent_course', '_lesson_course', 'ir_shared_instructor_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('allow_conversation', 'course_id', '_tutor_course_id_for_lesson', '_llms_parent_course', '_lesson_course', 'ir_shared_instructor_ids');

