-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ediot_plugin_license_key', 'ediot_plugin_license_validation_status', 'ediot_importer_theme_suspension_status', 'omega_importer_display_string', 'elementor_onboarded', 'hfe_start_onboarding', 'hfe_onboarding_triggered', 'sbi_statuses', 'sbi_plugin_do_activation_redirect', 'charitable_started_onboarding', 'wpr_plugin_do_activation_redirect', '_epl_activation_redirect', 'charitable_activation_redirect', 'charitable_install');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a');

