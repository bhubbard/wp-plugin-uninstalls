-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'premmerce_search_field_selector', 'premmerce_search_force_product_search', 'woocommerce_hide_out_of_stock_items', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');

