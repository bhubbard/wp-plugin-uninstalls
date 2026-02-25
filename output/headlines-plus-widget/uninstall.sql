-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hptpd_plugin_version', 'hptpd_pub_data_from_approval_form');

