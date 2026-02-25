-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ms_twwall_plugin_general_settings', 'ms_twwall_plugin_postlayout_settings', 'ms_twwall_plugin_color_settings');

