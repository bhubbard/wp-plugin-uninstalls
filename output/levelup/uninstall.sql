-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('levelup_library_settings', 'levelup-library-version', 'levelup-library-loaded-version', '_elementor_global_css', 'levelup_default_designs_load', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('design_unique_name', 'design_preview_url', 'design_feature_image_url', '_elementor_css', '_wp_page_template', '_elementor_edit_mode', 'amp_html_markup', 'non_amp_html_markup', 'design_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('design_unique_name', 'design_preview_url', 'design_feature_image_url', '_elementor_css', '_wp_page_template', '_elementor_edit_mode', 'amp_html_markup', 'non_amp_html_markup', 'design_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('design_unique_name', 'design_preview_url', 'design_feature_image_url', '_elementor_css', '_wp_page_template', '_elementor_edit_mode', 'amp_html_markup', 'non_amp_html_markup', 'design_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('design_unique_name', 'design_preview_url', 'design_feature_image_url', '_elementor_css', '_wp_page_template', '_elementor_edit_mode', 'amp_html_markup', 'non_amp_html_markup', 'design_settings');

