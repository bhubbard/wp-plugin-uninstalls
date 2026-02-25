-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bup_options', 'ultimatecaptcha_options', 'ultimatecaptcha_profile_fields', 'ultimatecaptcha_c_key', 'ultimatecaptcha_pro_active', 'ultimatecaptcha_ini_setup', 'ultimatecaptcha_my_account_page', 'ultimatecaptcharoaw_aweber_list', 'ucaptcha_plugin_do_activation_redirect', 'ucaptcha_ini_setup');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_pic', 'user_profile_bg', 'bup_description', 'bup_summary', 'country', 'city', 'address', 'bup_mailchimp', 'ultimatecaptcha_user_registered_ip', 'last_name', 'first_name', 'ultimatecaptcha_ultra_very_key', 'ultimatecaptcha_aweber', 'ultimatecaptcha_account_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_pic', 'user_profile_bg', 'bup_description', 'bup_summary', 'country', 'city', 'address', 'bup_mailchimp', 'ultimatecaptcha_user_registered_ip', 'last_name', 'first_name', 'ultimatecaptcha_ultra_very_key', 'ultimatecaptcha_aweber', 'ultimatecaptcha_account_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_pic', 'user_profile_bg', 'bup_description', 'bup_summary', 'country', 'city', 'address', 'bup_mailchimp', 'ultimatecaptcha_user_registered_ip', 'last_name', 'first_name', 'ultimatecaptcha_ultra_very_key', 'ultimatecaptcha_aweber', 'ultimatecaptcha_account_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_pic', 'user_profile_bg', 'bup_description', 'bup_summary', 'country', 'city', 'address', 'bup_mailchimp', 'ultimatecaptcha_user_registered_ip', 'last_name', 'first_name', 'ultimatecaptcha_ultra_very_key', 'ultimatecaptcha_aweber', 'ultimatecaptcha_account_status');

