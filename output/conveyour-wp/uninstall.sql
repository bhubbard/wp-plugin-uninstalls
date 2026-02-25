-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conveyour_domain', 'conveyour_appkey', 'conveyour_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('module_type', 'student_checked_answers', 'course_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('module_type', 'student_checked_answers', 'course_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('module_type', 'student_checked_answers', 'course_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('module_type', 'student_checked_answers', 'course_id');

