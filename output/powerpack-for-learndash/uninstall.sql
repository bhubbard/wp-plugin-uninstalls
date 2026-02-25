-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('learndash_powerpack_active_classes', 'ld_powerpack_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sfwd-course_progress', 'ld_auto_enroll_group_courses', 'ld_auto_enroll_group_course_ids');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sfwd-course_progress', 'ld_auto_enroll_group_courses', 'ld_auto_enroll_group_course_ids');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sfwd-course_progress', 'ld_auto_enroll_group_courses', 'ld_auto_enroll_group_course_ids');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sfwd-course_progress', 'ld_auto_enroll_group_courses', 'ld_auto_enroll_group_course_ids');

