-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_update_plugins', 'active_sitewide_plugins', 'plugin_report_cache_cleared');

