-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price', '_manage_stock', '_stock', '_sale_price', '_sku', '_virtual', '_downloadable', '_stock_status', '_wc_rating_count', '_wc_average_rating', 'total_sales', 'rank_math_description', 'rank_math_focus_keyword', 'rank_math_title');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price', '_manage_stock', '_stock', '_sale_price', '_sku', '_virtual', '_downloadable', '_stock_status', '_wc_rating_count', '_wc_average_rating', 'total_sales', 'rank_math_description', 'rank_math_focus_keyword', 'rank_math_title');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price', '_manage_stock', '_stock', '_sale_price', '_sku', '_virtual', '_downloadable', '_stock_status', '_wc_rating_count', '_wc_average_rating', 'total_sales', 'rank_math_description', 'rank_math_focus_keyword', 'rank_math_title');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price', '_manage_stock', '_stock', '_sale_price', '_sku', '_virtual', '_downloadable', '_stock_status', '_wc_rating_count', '_wc_average_rating', 'total_sales', 'rank_math_description', 'rank_math_focus_keyword', 'rank_math_title');

