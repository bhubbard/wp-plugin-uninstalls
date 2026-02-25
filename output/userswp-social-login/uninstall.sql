-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uwp_social_db_version', 'uwp-social-authuri-notice-dismissed', 'uwp_settings', '_uwp_social_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE 'uwp_social_profile_incomplete_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('is_uwp_social_login', 'user_registered', '_uwp_register_form_id', 'first_name', 'last_name', 'is_uwp_social_login_no_password', 'uwp_social_login_provider', 'uwp_mod', 'uwp_current_provider', 'uwp_social_user_image');
DELETE FROM wp_usermeta WHERE meta_key IN ('is_uwp_social_login', 'user_registered', '_uwp_register_form_id', 'first_name', 'last_name', 'is_uwp_social_login_no_password', 'uwp_social_login_provider', 'uwp_mod', 'uwp_current_provider', 'uwp_social_user_image');
DELETE FROM wp_termmeta WHERE meta_key IN ('is_uwp_social_login', 'user_registered', '_uwp_register_form_id', 'first_name', 'last_name', 'is_uwp_social_login_no_password', 'uwp_social_login_provider', 'uwp_mod', 'uwp_current_provider', 'uwp_social_user_image');
DELETE FROM wp_commentmeta WHERE meta_key IN ('is_uwp_social_login', 'user_registered', '_uwp_register_form_id', 'first_name', 'last_name', 'is_uwp_social_login_no_password', 'uwp_social_login_provider', 'uwp_mod', 'uwp_current_provider', 'uwp_social_user_image');

