-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('crel_version_first', 'active_sitewide_plugins', 'crel_version', 'crel_preset_settings', 'crel_error_log', 'crel_long_notices', 'crel_one_time_notices', 'crel_show_upgrade_message', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', '_crel_plugin_installed', '_crel_plugin_activated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', '_wp_attachment_image_alt');

