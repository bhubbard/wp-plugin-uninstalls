-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementor_unfiltered_files_upload', 'elementor_experiment-e_optimized_control_loading', 'elementor_active_kit', 'st_demo_importer_plugin_activated', 'st_demo_importer_pro_theme_validation_status', 'stdi_pro_theme_key', 'st_demo_importer_plugin_license_key', 'stdi_recently_activated', 'stdi_theme_activation_redirect', 'elementor_activation_redirect', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_template_type', '_wp_page_template', '_elementor_edit_mode', '_elementor_page_settings', '_elementor_data', 'stea_theme_builder_sticky', 'stea_theme_builder_target_include_locations', 'stea_theme_builder_template_type', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a', '_elementor_version', '_elementor_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_template_type', '_wp_page_template', '_elementor_edit_mode', '_elementor_page_settings', '_elementor_data', 'stea_theme_builder_sticky', 'stea_theme_builder_target_include_locations', 'stea_theme_builder_template_type', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a', '_elementor_version', '_elementor_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_template_type', '_wp_page_template', '_elementor_edit_mode', '_elementor_page_settings', '_elementor_data', 'stea_theme_builder_sticky', 'stea_theme_builder_target_include_locations', 'stea_theme_builder_template_type', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a', '_elementor_version', '_elementor_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_template_type', '_wp_page_template', '_elementor_edit_mode', '_elementor_page_settings', '_elementor_data', 'stea_theme_builder_sticky', 'stea_theme_builder_target_include_locations', 'stea_theme_builder_template_type', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a', '_elementor_version', '_elementor_css');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'st_demo_importer_tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'st_demo_importer_tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'st_demo_importer_tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'st_demo_importer_tgmpa_dismissed_notice_%';

