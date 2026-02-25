-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cf7dtx_settings', 'cf7dtx_version', 'cf7dtx_v4_2_0_access_scan_check_status');

