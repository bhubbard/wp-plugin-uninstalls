-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp_plugin_assets_attachment', '_wp_plugin_define_before', '_wp_plugin_define_after', '_wp_plugin_define_repeater', '_wp_pluginname', '_wp_pluginenable', 'wp_plugin_assets_scripts', 'wp_plugin_assets_styles', 'wp_plugin_assets_images', 'wp_plugin_assets_others');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp_plugin_assets_attachment', '_wp_plugin_define_before', '_wp_plugin_define_after', '_wp_plugin_define_repeater', '_wp_pluginname', '_wp_pluginenable', 'wp_plugin_assets_scripts', 'wp_plugin_assets_styles', 'wp_plugin_assets_images', 'wp_plugin_assets_others');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp_plugin_assets_attachment', '_wp_plugin_define_before', '_wp_plugin_define_after', '_wp_plugin_define_repeater', '_wp_pluginname', '_wp_pluginenable', 'wp_plugin_assets_scripts', 'wp_plugin_assets_styles', 'wp_plugin_assets_images', 'wp_plugin_assets_others');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp_plugin_assets_attachment', '_wp_plugin_define_before', '_wp_plugin_define_after', '_wp_plugin_define_repeater', '_wp_pluginname', '_wp_pluginenable', 'wp_plugin_assets_scripts', 'wp_plugin_assets_styles', 'wp_plugin_assets_images', 'wp_plugin_assets_others');

