-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_permalinks_flushed', 'dps_integration_ngoid', 'dps_custom_css', 'dps_custom_js');

