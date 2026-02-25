-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wfp_plugin_settings_have_changed', 'wfp_content_settings', 'wfp_styles_settings', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wfp_status', 'wfp_faq_for', 'wfp_wc_product_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('wfp_status', 'wfp_faq_for', 'wfp_wc_product_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('wfp_status', 'wfp_faq_for', 'wfp_wc_product_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wfp_status', 'wfp_faq_for', 'wfp_wc_product_id');

