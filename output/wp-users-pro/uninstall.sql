-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpuserspro_c_key', 'wpuserspro_c_expiration', 'wpuserspro_profile_fields', 'wpuserspro_options', 'wpuserspro_pro_active', 'wpuserspro_rate_message', 'wpuserspro_my_account_page', 'wpuserspro_ini_setup', 'wpuserspro_auto_page_creation', 'bup_my_account_page', 'wpuserspro_aweber_list', 'wpuserspro_plugin_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('first_name', 'last_name', 'uultra_protect_logged_in', 'ccap', 'user_pic', 'user_profile_bg', 'bup_description', 'bup_summary', 'country', 'city', 'address', 'bup_mailchimp', 'wpuserspro_user_registered_ip', 'wpuserspro_is_client', 'wpuserspro_ultra_very_key', 'wpuserspro_aweber', 'wpuserspro_account_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('first_name', 'last_name', 'uultra_protect_logged_in', 'ccap', 'user_pic', 'user_profile_bg', 'bup_description', 'bup_summary', 'country', 'city', 'address', 'bup_mailchimp', 'wpuserspro_user_registered_ip', 'wpuserspro_is_client', 'wpuserspro_ultra_very_key', 'wpuserspro_aweber', 'wpuserspro_account_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('first_name', 'last_name', 'uultra_protect_logged_in', 'ccap', 'user_pic', 'user_profile_bg', 'bup_description', 'bup_summary', 'country', 'city', 'address', 'bup_mailchimp', 'wpuserspro_user_registered_ip', 'wpuserspro_is_client', 'wpuserspro_ultra_very_key', 'wpuserspro_aweber', 'wpuserspro_account_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('first_name', 'last_name', 'uultra_protect_logged_in', 'ccap', 'user_pic', 'user_profile_bg', 'bup_description', 'bup_summary', 'country', 'city', 'address', 'bup_mailchimp', 'wpuserspro_user_registered_ip', 'wpuserspro_is_client', 'wpuserspro_ultra_very_key', 'wpuserspro_aweber', 'wpuserspro_account_status');

