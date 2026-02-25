-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atec_allow_integrity_check', 'atec_WPB_settings', 'atec_WPDP_settings', 'atec_WPDV_settings', 'atec_WPLU_settings', 'atec_WPO_settings', 'atec_WPSM_mail_tested', 'atec_wpwp_active', 'atec_wpdp_latest', 'atec_wpb_debug', 'atec_wpmc_debug', 'atec_WPMC_extensions', 'atec_WPMC_settings', 'atec_WPMC_prime', 'atec_WPCA_settings', 'atec_license_code_MEGA');
DELETE FROM wp_options WHERE option_name LIKE '%_extensions';
DELETE FROM wp_options WHERE option_name LIKE '%_admin_bar';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_active';

