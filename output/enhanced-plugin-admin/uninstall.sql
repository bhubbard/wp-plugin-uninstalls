-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epa_plugin_settings', 'epa_pn_hidden', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'epa_%';
DELETE FROM wp_options WHERE option_name LIKE '%_in_wp_plugin_svn';

