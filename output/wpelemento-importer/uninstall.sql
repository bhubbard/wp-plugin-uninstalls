-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bdi_admin_notices', 'wpelemento_importer_do_activation_redirect', 'wpelemento_importer_pro_theme_validation_status', 'wpelemento_importer_pro_suspension_status', 'wp_pro_theme_key', 'wpelemento_importer_plugin_license_key', 'recently_activated', 'wpelemento_importer_free_theme_activation_redirect', 'elementor_activation_redirect', 'update_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template', 'elementskit_template_activation', 'elementskit_template_type', 'elementskit_template_condition_a', '_elementor_data', '_elementor_version', '_elementor_edit_mode', '_elementor_css');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wpelemento_importer_tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wpelemento_importer_tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wpelemento_importer_tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wpelemento_importer_tgmpa_dismissed_notice_%';

