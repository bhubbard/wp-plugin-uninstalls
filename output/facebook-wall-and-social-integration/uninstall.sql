-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ms_fbwall_plugin_general_settings', 'ms_fbwall_plugin_postlayout_settings', 'ms_fbwall_plugin_color_settings', 'ms_fbwall_plugin_token_settings');

