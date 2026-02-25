-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('imop_setting_data', 'cwpd_setting_data', 'imop_wp_optimize');

