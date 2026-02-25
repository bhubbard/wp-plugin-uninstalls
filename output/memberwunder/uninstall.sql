-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('registration', 'twm_smtp_options');
DELETE FROM wp_options WHERE option_name LIKE '%_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('quiz', 'image', 'course_id', 'before_start', 'module_id', 'twm_avatar_attachment_id', 'first_name', 'last_name', 'mw_started_free_courses', 'twm_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('quiz', 'image', 'course_id', 'before_start', 'module_id', 'twm_avatar_attachment_id', 'first_name', 'last_name', 'mw_started_free_courses', 'twm_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('quiz', 'image', 'course_id', 'before_start', 'module_id', 'twm_avatar_attachment_id', 'first_name', 'last_name', 'mw_started_free_courses', 'twm_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('quiz', 'image', 'course_id', 'before_start', 'module_id', 'twm_avatar_attachment_id', 'first_name', 'last_name', 'mw_started_free_courses', 'twm_info');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%info_show_on_login';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%info_show_on_login';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%info_show_on_login';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%info_show_on_login';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%info';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%info';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%info';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%info';

