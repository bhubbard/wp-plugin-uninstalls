-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_update_plugins', 'auto_update_themes', 'auto_update_core_dev', 'auto_update_core_minor', 'auto_update_core_major', 'cloudseca_plugin_options');

