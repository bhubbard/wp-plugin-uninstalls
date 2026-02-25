-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('appmaker_wp_settings', 'appmaker_wp_custom_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('appmaker_wp_access_token', '_wp_page_template', '_registered_from_app', 'appmaker_wp_user_login_from_app', 'user_register_date_time', '_user_avatar', 'user_login_date_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('appmaker_wp_access_token', '_wp_page_template', '_registered_from_app', 'appmaker_wp_user_login_from_app', 'user_register_date_time', '_user_avatar', 'user_login_date_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('appmaker_wp_access_token', '_wp_page_template', '_registered_from_app', 'appmaker_wp_user_login_from_app', 'user_register_date_time', '_user_avatar', 'user_login_date_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('appmaker_wp_access_token', '_wp_page_template', '_registered_from_app', 'appmaker_wp_user_login_from_app', 'user_register_date_time', '_user_avatar', 'user_login_date_time');

