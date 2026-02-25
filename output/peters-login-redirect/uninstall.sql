-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('loginwp_from_ab_initio', 'loginwp_install_date', 'loginwp_free_license', 'rul_settings', 'rul_version', 'wo_dismiss_adnotice', 'loginwp_settings', 'loginwp_redirection_settings', 'loginwp_license_status', 'loginwp_license_expired_status', 'loginwp_license_key');
DELETE FROM wp_options WHERE option_name LIKE '%user_roles';
DELETE FROM wp_options WHERE option_name LIKE 'pand-%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('loginwp_first_time_login_flag');
DELETE FROM wp_usermeta WHERE meta_key IN ('loginwp_first_time_login_flag');
DELETE FROM wp_termmeta WHERE meta_key IN ('loginwp_first_time_login_flag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('loginwp_first_time_login_flag');

