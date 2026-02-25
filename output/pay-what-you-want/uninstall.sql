-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'pwyw_enable_plugin', 'pwyw_allow_own_price', 'pwyw_add_to_cart_btn_inside_loop', 'pwyw_products_area', 'pwyw_price_group', 'pwyw_product_categories', 'pwyw_price_fraction', 'pwyw_min_price', 'pwyw_price_text', 'pwyw_predefined_price_set', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pwyw-single-price');
DELETE FROM wp_usermeta WHERE meta_key IN ('pwyw-single-price');
DELETE FROM wp_termmeta WHERE meta_key IN ('pwyw-single-price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pwyw-single-price');

