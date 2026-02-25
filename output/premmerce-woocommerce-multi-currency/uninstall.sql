-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'woocommerce_currency', 'premmerce_multicurrency_ajax_prices_redraw', 'woocommerce_currency_pos', 'woocommerce_price_decimal_sep', 'woocommerce_price_thousand_sep', 'woocommerce_price_num_decimals', 'fs_snooze_period', 'update_plugins', 'update_themes', '_fs_api_connection_retry_counter', 'premmerce_products_recalculate', 'premmerce_multicurrency_check_main_currency', 'rocket_get_refreshed_fragments_cache');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_product_currency');
DELETE FROM wp_usermeta WHERE meta_key IN ('_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_product_currency');
DELETE FROM wp_termmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_product_currency');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_regular_price', '_sale_price', '_sale_price_dates_from', '_sale_price_dates_to', '_product_currency');

