-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'moowoodle_version', 'moowoodle_general_settings', 'moowoodle_sso_settings', 'moowoodle_display_settings', 'moowoodle_tool_settings', 'moowoodle_synchronize_course_settings', 'moowoodle_synchronize_user_settings', 'moowoodle_log_file', 'moowoodle_moodle_site_name', 'course_sync_running');
DELETE FROM wp_options WHERE option_name LIKE 'moowoodle_sync_status_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_category_id', '_parent', '_category_path', 'linked_course_id', 'moodle_course_id', 'moowoodle_moodle_new_user_created', 'moowoodle_wordpress_new_user_created', 'moowoodle_moodle_user_id', 'moowoodle_wordpress_user_pwd', 'moowoodle_moodle_user_pwd');
DELETE FROM wp_usermeta WHERE meta_key IN ('_category_id', '_parent', '_category_path', 'linked_course_id', 'moodle_course_id', 'moowoodle_moodle_new_user_created', 'moowoodle_wordpress_new_user_created', 'moowoodle_moodle_user_id', 'moowoodle_wordpress_user_pwd', 'moowoodle_moodle_user_pwd');
DELETE FROM wp_termmeta WHERE meta_key IN ('_category_id', '_parent', '_category_path', 'linked_course_id', 'moodle_course_id', 'moowoodle_moodle_new_user_created', 'moowoodle_wordpress_new_user_created', 'moowoodle_moodle_user_id', 'moowoodle_wordpress_user_pwd', 'moowoodle_moodle_user_pwd');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_category_id', '_parent', '_category_path', 'linked_course_id', 'moodle_course_id', 'moowoodle_moodle_new_user_created', 'moowoodle_wordpress_new_user_created', 'moowoodle_moodle_user_id', 'moowoodle_wordpress_user_pwd', 'moowoodle_moodle_user_pwd');

