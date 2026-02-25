-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dv_settings', 'my_db_version', 'dv_settings_style', 'dv_settings_avis', 'dialv_plugin_version');

