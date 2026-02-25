-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('htbuilder_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'htbuilder_selectterm_layout', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'htbuilder_selectterm_layout', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'htbuilder_selectterm_layout', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'htbuilder_selectterm_layout', '_elementor_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_edit_mode');

