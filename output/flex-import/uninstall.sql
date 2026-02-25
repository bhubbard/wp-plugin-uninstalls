-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fleximp_current_text_domain', 'fleximp_dynamic_template_php', 'fleximp_dynamic_template_css', 'fleximp_dynamic_template_js', 'fleximp_is_premium', 'fleximp_plugin_license_key', 'fleximp_plugin_license_validation_status', 'flex_template_is_imported', 'fleximp_validation_status', 'fleximp_suspension_status', 'fleximp_show_elementor_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a');

