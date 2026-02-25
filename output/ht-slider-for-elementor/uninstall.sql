-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('htslider_delete_data_fetch_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_wp_page_template');

