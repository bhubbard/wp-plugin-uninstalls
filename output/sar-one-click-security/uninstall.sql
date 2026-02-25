-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sar_ocs_apache24_notice', 'sar_ocs_ver', 'sar_ocs_wpc_htaccess');

