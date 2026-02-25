-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ip2location_widget_language', 'ip2location_widget_type', 'ip2location_widget_debug_log_enabled');

