-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_gtin_schema_admin_tab_in_loop', 'wc_gtin_schema_admin_tab_in_single_product', 'wc_gtin_schema_admin_tab_in_cart', 'wc_gtin_schema_admin_tab_in_order_item', 'wc_gtin_schema_admin_tab_single_product_position', 'wc_gtin_schema_admin_tab_single_product_tab', 'wc_gtin_schema_admin_tab_in_checkout', 'gtin_schema_product_date_structure', 'wc_gtin_schema_admin_tab_label', 'wc_gtin_schema_admin_tab_get_get_sku');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gtin_schema_code', '_sku');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gtin_schema_code', '_sku');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gtin_schema_code', '_sku');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gtin_schema_code', '_sku');

