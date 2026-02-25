-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('osgsw_license_sync', 'osgsw_column_preferences', 'osgsw_column_preferences_updated', 'osgsw_license_active', 'osgsw_already_update', 'osgsw_new_user_activate', 'osgsw_update_flag', 'osgsw_spreadsheet_url', 'osgsw_new_user_activate_bulk', 'osgsw_new_user_activate_trigger_1_11_9', 'ssgsw_prev_status', 'osgsw_setup_step', 'osgsw_already_update_bulk', 'osgsw_already_update_trigger_1_11_9', 'ossgs_first_time_action', 'woocommerce_custom_orders_table_enabled', 'osgsw_free_active', 'osgsw_install_times', 'osgsw_update_notice', 'osgsw_batch_sheet_headers_cache', 'osgsw_batch_original_headers_cache', 'osgsw_batch_cache_timestamp', 'osgsw_multiple_itmes', 'osgsw_show_product_qt', 'osgsw_sync_total_items', 'osgsw_product_sku_sync', 'osgsw_sync_total_price', 'osgsw_bulk_edit_option2', 'ssgsw_show_product_status');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%sync_total_items';
DELETE FROM wp_options WHERE option_name LIKE '%sync_total_price';
DELETE FROM wp_options WHERE option_name LIKE '%product_sku_sync';
DELETE FROM wp_options WHERE option_name LIKE '%sync_order_products';
DELETE FROM wp_options WHERE option_name LIKE '%sync_order_status';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku');

