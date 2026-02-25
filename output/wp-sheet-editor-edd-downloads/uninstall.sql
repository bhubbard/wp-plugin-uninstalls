-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vgse_columns_used_counter', 'vgse_dismiss_review_tip', 'vgse_secret_key', 'vgse_toolbar_cache_seed', 'vgse_disable_quick_setup', 'vgse_editions_counter', 'vgse_processed_counter', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_migrated';
DELETE FROM wp_options WHERE option_name LIKE '%_counter';
DELETE FROM wp_options WHERE option_name LIKE 'vgse_hide_whats_new_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_variable_pricing', 'vgse_columns', 'wpse_has_saved_sheet', 'wpse_external_file_url', '_edit_last', '_wp_page_template', '_product_image_gallery', '_thumbnail_id', '_regular_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_variable_pricing', 'vgse_columns', 'wpse_has_saved_sheet', 'wpse_external_file_url', '_edit_last', '_wp_page_template', '_product_image_gallery', '_thumbnail_id', '_regular_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_variable_pricing', 'vgse_columns', 'wpse_has_saved_sheet', 'wpse_external_file_url', '_edit_last', '_wp_page_template', '_product_image_gallery', '_thumbnail_id', '_regular_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_variable_pricing', 'vgse_columns', 'wpse_has_saved_sheet', 'wpse_external_file_url', '_edit_last', '_wp_page_template', '_product_image_gallery', '_thumbnail_id', '_regular_price');

