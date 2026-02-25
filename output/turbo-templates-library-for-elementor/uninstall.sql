-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('trstemp_wizard_data', 'trstemp_current_template', 'trstemp_current_template_name', 'trstemp_setup_completed', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'trstemp_activation_redirect', 'trstemp_starter_redirect', 'trstemp_notice_dismissed', 'trstemp_starter_notice_dismissed', 'turbo_templates_list', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_data';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_wp_page_template', '_page_template', '_elementor_page_template', '_elementor_page_settings', '_elementor_page_assets', '_elementor_controls_usage', '_elementor_css', '_elementor_pro_version', '_trstemp_custom_css', 'turbo_templates_dismissed_notices');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_wp_page_template', '_page_template', '_elementor_page_template', '_elementor_page_settings', '_elementor_page_assets', '_elementor_controls_usage', '_elementor_css', '_elementor_pro_version', '_trstemp_custom_css', 'turbo_templates_dismissed_notices');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_wp_page_template', '_page_template', '_elementor_page_template', '_elementor_page_settings', '_elementor_page_assets', '_elementor_controls_usage', '_elementor_css', '_elementor_pro_version', '_trstemp_custom_css', 'turbo_templates_dismissed_notices');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_elementor_edit_mode', '_elementor_template_type', '_elementor_version', '_wp_page_template', '_page_template', '_elementor_page_template', '_elementor_page_settings', '_elementor_page_assets', '_elementor_controls_usage', '_elementor_css', '_elementor_pro_version', '_trstemp_custom_css', 'turbo_templates_dismissed_notices');

