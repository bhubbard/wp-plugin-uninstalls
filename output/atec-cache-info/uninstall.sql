-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atec_WPAS_stats', 'atec_allow_integrity_check', 'atec_dev_mode', 'atec_admin_debug', 'atec_WPSI_ip', 'atec_WPSI_geo', 'atec_license_code');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

