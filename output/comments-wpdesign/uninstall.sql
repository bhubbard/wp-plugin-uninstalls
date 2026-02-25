-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cwpd_version', 'cwpd_wp_design', 'cwpd_setting_data');

