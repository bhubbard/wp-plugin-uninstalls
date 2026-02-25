-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('user_profile_page_id_for_login', 'user_profile_page_id_for_show_my_profile', 'user_profile_page_id_for_edit_my_profile', 'user_profile_page_id_for_registration', 'user_profile_page_id_for_registration_finished', 'user_profile_disable_activation_email');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_profile_user_activation_status', 'user_profile_user_activation_code', 'avatar');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_profile_user_activation_status', 'user_profile_user_activation_code', 'avatar');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_profile_user_activation_status', 'user_profile_user_activation_code', 'avatar');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_profile_user_activation_status', 'user_profile_user_activation_code', 'avatar');

