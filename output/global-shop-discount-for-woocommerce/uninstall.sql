-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'alg_wc_global_shop_discount_plugin_enabled', 'alg_wc_global_shop_discount_load_in_admin', 'woocommerce_version', 'alg_wc_global_shop_discount_taxonomies', 'alg_wc_global_shop_discount_stop_on_first_discount_group', 'alg_wc_global_shop_discount_cache_product_prices', 'alg_wc_global_shop_discount_tool_save_all_products', 'alg_wc_global_shop_discount_tool_delete_transients', 'alg_wc_global_shop_discount_version', 'alg_wc_global_shop_discount_admin_title', 'alg_wc_global_shop_discount_taxonomies_orderby', 'alg_wc_gsd_products_onsale');
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_global_shop_discount_%';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_gsd_products_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_price');

