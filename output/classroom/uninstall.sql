-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rewrite_rules', 'wp-classroom');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp-classroom_mb_user_class_access', 'wp-classroom_mb_user_course_access', '_classroom_classes', '_classroom_courses', '_classroom_duration', '_classroom_duration_uom', 'wp_classroom_video', '_wp_course_course_redirect', 'wp_classroom_redirect', 'wp_classroom_completed', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp-classroom_mb_user_class_access', 'wp-classroom_mb_user_course_access', '_classroom_classes', '_classroom_courses', '_classroom_duration', '_classroom_duration_uom', 'wp_classroom_video', '_wp_course_course_redirect', 'wp_classroom_redirect', 'wp_classroom_completed', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp-classroom_mb_user_class_access', 'wp-classroom_mb_user_course_access', '_classroom_classes', '_classroom_courses', '_classroom_duration', '_classroom_duration_uom', 'wp_classroom_video', '_wp_course_course_redirect', 'wp_classroom_redirect', 'wp_classroom_completed', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp-classroom_mb_user_class_access', 'wp-classroom_mb_user_course_access', '_classroom_classes', '_classroom_courses', '_classroom_duration', '_classroom_duration_uom', 'wp_classroom_video', '_wp_course_course_redirect', 'wp_classroom_redirect', 'wp_classroom_completed', '_wp_page_template');

