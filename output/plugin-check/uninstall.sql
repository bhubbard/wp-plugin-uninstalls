-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_check_ai_credentials', 'wp_plugin_check_latest_version_info');

