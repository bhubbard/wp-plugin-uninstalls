-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ssgsw_multi_vendor_active', 'ssgsw_vendor_menu_name', 'ssgsw_cron_sync_day', 'ssgsw_sync_time', 'ssgsw_vendor_active_instance', 'ssgsw_license_sync', 'ssgsw_hide_upgrade_notice', 'ssgsw_token', 'ssgsw_setup_step', 'ssgsw_new_user_activated_key11', 'ssgsw_already_updated_key11', 'ssgsw_ultimate_license_active', 'ssgsw_version_3_12_sync', 'ssgsw_redirect_to_admin_page', 'woocommerce_custom_orders_table_enabled', 'ssgsw_synced', 'ssgsw_table_active', 'ssgsw_vendor_setting_options_on', 'ssgsw_table_active_new_columns_new_uniq', 'ssgsw_install_times', 'ssgsw_per_page', 'ssgsw_days_count', 'ssgsw_update_notice', 'wcfm_page_options', 'wcfm_endpoints', 'ssgsw_flush_rewrite_rules_on_next_load', 'ssgsw_plugin_activation_message', 'ssgsw_hide_upgrade_notice', 'ssgsw_sync_in_progress_state');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%spreadsheet_url';
DELETE FROM wp_options WHERE option_name LIKE 'default_term_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ssgsw_vendor_init_done', '_product_attributes', '_wp_desired_post_slug', '_wp_attachment_context', '_wp_page_template', '_visibility', '_stock_status', '_regular_price', '_sale_price', '_sku', '_manage_stock', '_stock', '_backorders', '_price', 'ssgsw_original_image_url', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('ssgsw_vendor_init_done', '_product_attributes', '_wp_desired_post_slug', '_wp_attachment_context', '_wp_page_template', '_visibility', '_stock_status', '_regular_price', '_sale_price', '_sku', '_manage_stock', '_stock', '_backorders', '_price', 'ssgsw_original_image_url', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('ssgsw_vendor_init_done', '_product_attributes', '_wp_desired_post_slug', '_wp_attachment_context', '_wp_page_template', '_visibility', '_stock_status', '_regular_price', '_sale_price', '_sku', '_manage_stock', '_stock', '_backorders', '_price', 'ssgsw_original_image_url', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ssgsw_vendor_init_done', '_product_attributes', '_wp_desired_post_slug', '_wp_attachment_context', '_wp_page_template', '_visibility', '_stock_status', '_regular_price', '_sale_price', '_sku', '_manage_stock', '_stock', '_backorders', '_price', 'ssgsw_original_image_url', '_thumbnail_id');

