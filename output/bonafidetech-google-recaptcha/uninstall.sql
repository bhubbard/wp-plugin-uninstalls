-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('BFTGR_user_roles', 'BFTGR_error_message', 'BFTGR_type', 'BFTGR_site_key', 'BFTGR_secret_key', 'BFTGR_theme', 'BFTGR_size', 'BFTGR_wp_login', 'BFTGR_wp_registration', 'BFTGR_wp_forgot_pwd', 'BFTGR_wp_comment', 'BFTGR_wc_login', 'BFTGR_wc_registration', 'BFTGR_wc_forgot_pwd');

