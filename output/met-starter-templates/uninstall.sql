-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementskit_options', 'elements_kit_onboard_status', 'mst_favorite_templates', 'metst_pages', 'metst_medias', 'metst_is_install', 'metst_header_footer', 'metst_menu', 'mst_onboard_status', 'mst_onboard_email', 'mst_onboard_data', 'gutenkit_settings_list', 'elementor_unfiltered_files_upload', 'metst_activation_redirect', 'metst_plugin_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('elementskit_template_type', 'elementskit_template_activation', 'elementskit_template_condition_a', '_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_media_file_hash');
DELETE FROM wp_usermeta WHERE meta_key IN ('elementskit_template_type', 'elementskit_template_activation', 'elementskit_template_condition_a', '_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_media_file_hash');
DELETE FROM wp_termmeta WHERE meta_key IN ('elementskit_template_type', 'elementskit_template_activation', 'elementskit_template_condition_a', '_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_media_file_hash');
DELETE FROM wp_commentmeta WHERE meta_key IN ('elementskit_template_type', 'elementskit_template_activation', 'elementskit_template_condition_a', '_elementor_edit_mode', '_elementor_template_type', '_elementor_data', '_elementor_page_settings', '_media_file_hash');

