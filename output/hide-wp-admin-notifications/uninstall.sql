-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hwan_show_dashboard_notices', 'hwan_plugin_version');

