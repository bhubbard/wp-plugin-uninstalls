-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ai_wp_cgntvdnmc_api_key', 'ai_wp_cgntvdnmc_resolution', 'ai_wp_cgntvdnmc_variations_num', 'ai_wp_cgntvdnmc_text_to_image_resolution', 'ai_wp_cgntvdnmc_chosen_ai_model', 'ai_wp_cgntvdnmc_text_to_image_quality', 'ai_wp_cgntvdnmc_text_to_image_style', 'ai_wp_cgntvdnmc_text_to_image_results', 'ai_wp_cgntvdnmc_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

