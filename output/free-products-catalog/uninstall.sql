-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbcp_display_display_image', 'wbcp_display_meta', 'wbcp_display_cat_and_tag', 'wbcp_product_layout', 'wbcp_archive_layout');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wb_products_colors', 'wb_products_dim', 'wb_products_sku', 'wb_products_series', 'wb_products_type', 'wb_products_price', 'wb_products_available');
DELETE FROM wp_usermeta WHERE meta_key IN ('wb_products_colors', 'wb_products_dim', 'wb_products_sku', 'wb_products_series', 'wb_products_type', 'wb_products_price', 'wb_products_available');
DELETE FROM wp_termmeta WHERE meta_key IN ('wb_products_colors', 'wb_products_dim', 'wb_products_sku', 'wb_products_series', 'wb_products_type', 'wb_products_price', 'wb_products_available');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wb_products_colors', 'wb_products_dim', 'wb_products_sku', 'wb_products_series', 'wb_products_type', 'wb_products_price', 'wb_products_available');

