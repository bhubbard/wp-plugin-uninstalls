-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'woocommerce_slp_show_pricing_table', 'woocommerce_slp_price_adjustment_direction', 'woocommerce_slp_stock_level_column_title', 'woocommerce_slp_percentage_change', 'woocommerce_slp_price', 'woocommerce_slp_explainer', 'woocommerce_slp_display_discount_as', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter');
DELETE FROM wp_options WHERE option_name LIKE 'original_price_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_manage_stock', '_regular_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_manage_stock', '_regular_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_manage_stock', '_regular_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_manage_stock', '_regular_price', '_sale_price');

