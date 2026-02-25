-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cpofw_settings', 'cpofw_plugin_version', 'cpofw_database_version', 'cpofw_installing');

