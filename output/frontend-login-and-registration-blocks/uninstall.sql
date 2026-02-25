-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('flr_blocks_limit_login_max_attempts', 'flr_blocks_limit_login_lockout_duration', 'flr_blocks_enable_mails', 'flr_blocks_enable_recaptcha', 'flr_blocks_enable_limit_login', 'flr_blocks_has_activation', 'flr_blocks_redirect_after_login', 'flr_blocks_redirect_from_wp_login_admin', 'flr_blocks_login_page', 'flr_blocks_enable_limit_reset_request_attempts', 'flr_blocks_lost_password_page', 'flr_blocks_enable_password_strength', 'flr_blocks_register_page', 'flr_blocks_activation_page', 'flr_blocks_user_settings_page', 'flr_blocks_terms_and_conditions_page', 'flr_blocks_privacy_policy_page', 'flr_blocks_has_user_dashboard', 'flr_blocks_register_mail_to_user', 'flr_blocks_register_mail_to_user_with_activation', 'flr_blocks_register_mail_to_admin', 'flr_blocks_reset_request_mail_to_user', 'flr_blocks_reset_password_mail_to_user', 'flr_blocks_enable_username_validation');
DELETE FROM wp_options WHERE option_name LIKE 'login_attempts_%';
DELETE FROM wp_options WHERE option_name LIKE 'user_activation_%';
DELETE FROM wp_options WHERE option_name LIKE 'reset_attempts_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('last_login_ip', 'last_login_time', 'flr_blocks_user_activation', 'flr_blocks_user_activation_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('last_login_ip', 'last_login_time', 'flr_blocks_user_activation', 'flr_blocks_user_activation_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('last_login_ip', 'last_login_time', 'flr_blocks_user_activation', 'flr_blocks_user_activation_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('last_login_ip', 'last_login_time', 'flr_blocks_user_activation', 'flr_blocks_user_activation_code');

