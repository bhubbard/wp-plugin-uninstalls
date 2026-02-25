-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elmpath_api_response', 'elmpath_elements_active', 'woocommerce_hide_out_of_stock_items');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_elementor_css', '_elementor_controls_usage', '_wp_page_template', '_elementor_version', 'team_social');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_elementor_css', '_elementor_controls_usage', '_wp_page_template', '_elementor_version', 'team_social');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_elementor_css', '_elementor_controls_usage', '_wp_page_template', '_elementor_version', 'team_social');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode', '_elementor_css', '_elementor_controls_usage', '_wp_page_template', '_elementor_version', 'team_social');

