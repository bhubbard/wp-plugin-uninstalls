-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chp_adb_plugin_title', 'chpadb_plugin_settings', 'registred_chp_abd_settings');

