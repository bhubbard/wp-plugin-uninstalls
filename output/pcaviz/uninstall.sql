-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pcaviz_plugin_deferred_admin_notices', 'pcaviz_option_name');

