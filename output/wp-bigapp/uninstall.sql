-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bigapp_extend_setting', 'bigapp_special_conf', 'bigapp_menu_conf', 'bigapp_banner_conf', 'bigapp_ak_sk', 'bigapp_menu_switch', 'osop', 'wp_user_avatar_allow_upload', 'bigapp_json_api_plugin_version', 'wpfp_options', 'views_options', 'wp_user_avatar_upload_size_limit', 'wp_user_avatar_resize_upload', 'wp_user_avatar_resize_w', 'wp_user_avatar_resize_h', 'wp_user_avatar_resize_crop');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('description', 'views', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('description', 'views', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('description', 'views', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('description', 'views', '_wp_attachment_wp_user_avatar');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar';

