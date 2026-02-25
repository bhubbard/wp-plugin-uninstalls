-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_scintg_plugin_meta_settings', 'wp_scintg_plugin_home_feed_settings');

