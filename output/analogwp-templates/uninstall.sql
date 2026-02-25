-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', '_ang_import_history', 'elementor_experiment-container', 'ang_queue_flush_rewrite_rules', 'elementor_active_kit', 'analog_onboarding', 'ang_options', 'elementor_disable_color_schemes', 'elementor_disable_typography_schemes', 'ran_onboarding', '_ang_installed_time', 'ang_hide_custom_library_promo', 'elementor_scheme_color-picker', 'style_kits_previous_db_version', 'style_kits_db_version', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'analog_get_kits', 'ang_license_message', 'analogwp_template_info');
DELETE FROM wp_options WHERE option_name LIKE 'ang_hide_%';
DELETE FROM wp_options WHERE option_name LIKE 'ang_rollback_versions_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_tokens_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_data', '_elementor_edit_mode');
DELETE FROM wp_usermeta WHERE meta_key IN ('_tokens_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_data', '_elementor_edit_mode');
DELETE FROM wp_termmeta WHERE meta_key IN ('_tokens_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_data', '_elementor_edit_mode');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_tokens_data', '_elementor_page_settings', '_elementor_template_type', '_elementor_data', '_elementor_edit_mode');

