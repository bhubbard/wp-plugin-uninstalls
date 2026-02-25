-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wiserrw_api_verified', 'wiserrw_api_settings', 'wiserrw_api_data', 'wiserrw_star_rating_enabled', 'wiserrw_wsid', 'wiserrw_automation_id', 'wiserrw_all_products_synced', 'wiserrw__update_hook');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', 'wiserrw_star_rating_html', 'wiserrw_product_html', '_wiserrw_product_registered', 'hwp_product_gtin', '_global_unique_id', 'hwp_var_gtin', '_wiserrw_watch_hash', 'wiserrw_schema_json');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', 'wiserrw_star_rating_html', 'wiserrw_product_html', '_wiserrw_product_registered', 'hwp_product_gtin', '_global_unique_id', 'hwp_var_gtin', '_wiserrw_watch_hash', 'wiserrw_schema_json');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', 'wiserrw_star_rating_html', 'wiserrw_product_html', '_wiserrw_product_registered', 'hwp_product_gtin', '_global_unique_id', 'hwp_var_gtin', '_wiserrw_watch_hash', 'wiserrw_schema_json');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', 'wiserrw_star_rating_html', 'wiserrw_product_html', '_wiserrw_product_registered', 'hwp_product_gtin', '_global_unique_id', 'hwp_var_gtin', '_wiserrw_watch_hash', 'wiserrw_schema_json');

