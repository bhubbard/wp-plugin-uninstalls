-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_ewb_skin', '_elementor_ewb_control_settings', '_ewb_plugin_version', '_elementor_page_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_ewb_skin', '_elementor_ewb_control_settings', '_ewb_plugin_version', '_elementor_page_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_ewb_skin', '_elementor_ewb_control_settings', '_ewb_plugin_version', '_elementor_page_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_ewb_skin', '_elementor_ewb_control_settings', '_ewb_plugin_version', '_elementor_page_settings');

