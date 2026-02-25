-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'llmagnet_last_generated', 'llmagnet_ai_seo_optimizer_image_count', 'llmagnet_ai_seo_optimizer_images_without_alt', 'llmagnet_ai_seo_optimizer_settings', 'llmagnet_report_email', 'llmagnet_report_template', 'llmagnet_report_frequency', 'llmagnet_report_send_time', 'llmagnet_report_company_logo', 'llmagnet_plan', 'llmagnet_is_trial', 'llmagnet_db_version', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'llmagnet_woo_active', 'llmagnet_product_paths', 'llmagnet_ai_seo_optimizer_last_run');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

