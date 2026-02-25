-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tc_auto_plugin', 'tc_auto_plugin_version', 'tc_auto_plugin_admin_notices');

