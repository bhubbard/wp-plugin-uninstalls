-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', '_elementor_page_settings', '_elementor_edit_mode', '_elementor_version', '_elementor_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', '_elementor_page_settings', '_elementor_edit_mode', '_elementor_version', '_elementor_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', '_elementor_page_settings', '_elementor_edit_mode', '_elementor_version', '_elementor_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_template_type', '_elementor_page_settings', '_elementor_edit_mode', '_elementor_version', '_elementor_css');

