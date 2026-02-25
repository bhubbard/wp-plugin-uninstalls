-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('avatar_default_wp_user_avatar', 'wp_user_avatar_disable_gravatar', 'wp_user_avatar_resize_crop', 'wp_user_avatar_resize_h', 'wp_user_avatar_resize_upload', 'wp_user_avatar_resize_w', 'wp_user_cover_upload_size_limit', 'wp_user_avatar_upload_size_limit', 'wp_user_cover_default_image_url', 'wp_user_avatar_default_avatar_updated', 'wp_user_avatar_users_updated', 'wp_user_avatar_media_updated', 'ppress_db_ver', 'ppress_license_key', 'ppress_connect_token', 'ppress_abdc_options', 'ppress_plugin_activated', 'ppress_new_v4_install', 'ppress_dismiss_leave_review_forever', 'ppress_install_date', 'ppress_cpf_select_multi_selectable', 'ppress_license_status', 'ppress_license_expired_status', 'fwp_dismiss_fwpadnotice', 'ppress_debug_log_token', 'ppressbfnote2022_dismiss_adnotice', 'ppress_is_from_wp_user_avatar', 'ppress_checkout_fields', 'ppress_login_redirect_rules', 'ppress_extension_manager', 'wp_user_avatar_load_scripts', 'wpua_has_gravatar', 'ppress_check_protection_files');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'ppressbfnote_dismiss_adnotice_%';
DELETE FROM wp_options WHERE option_name LIKE 'pand-%';
DELETE FROM wp_options WHERE option_name LIKE 'geoip_%';
DELETE FROM wp_options WHERE option_name LIKE 'yolo-plugin-info-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_user_avatar', '_wp_attachment_wp_user_avatar', 'pp_profile_cover_image', 'pp_profile_avatar', 'pp_uploaded_files', '_pp_signup_melange_via', '_pp_signup_via', 'description');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_user_avatar', '_wp_attachment_wp_user_avatar', 'pp_profile_cover_image', 'pp_profile_avatar', 'pp_uploaded_files', '_pp_signup_melange_via', '_pp_signup_via', 'description');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_user_avatar', '_wp_attachment_wp_user_avatar', 'pp_profile_cover_image', 'pp_profile_avatar', 'pp_uploaded_files', '_pp_signup_melange_via', '_pp_signup_via', 'description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_user_avatar', '_wp_attachment_wp_user_avatar', 'pp_profile_cover_image', 'pp_profile_avatar', 'pp_uploaded_files', '_pp_signup_melange_via', '_pp_signup_via', 'description');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar';

