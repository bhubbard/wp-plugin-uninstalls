-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pmwi_free_deactivation_notice', 'woocommerce_prices_include_tax', 'woocommerce_tax_round_at_subtotal', 'woocommerce_notify_no_stock_amount', 'active_sitewide_plugins', 'wp_all_import_woocommerce_addon_db_version', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'update_plugins', 'wc_attribute_taxonomies');
DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_product_stack_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_products_maybe_to_delete_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_not_linked_products_%';
DELETE FROM wp_options WHERE option_name LIKE '%_parent_product';
DELETE FROM wp_options WHERE option_name LIKE 'wp_all_import_previously_updated_order_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_product_attributes', '_regular_price', '_regular_price_tmp', '_sale_price', '_sale_price_tmp', 'pmxi_wholesale_price', 'pmxi_wholesale_price_tmp', '_sale_price_dates_from', '_sale_price_dates_from_tmp', '_sale_price_dates_to', '_sale_price_dates_to_tmp', '_price', '_price_tmp', '_variation_updated', '_stock', '_product_version', '_product_image_gallery_tmp', '_product_image_gallery', 'total_sales', '_parent_sku', '_children');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_product_attributes', '_regular_price', '_regular_price_tmp', '_sale_price', '_sale_price_tmp', 'pmxi_wholesale_price', 'pmxi_wholesale_price_tmp', '_sale_price_dates_from', '_sale_price_dates_from_tmp', '_sale_price_dates_to', '_sale_price_dates_to_tmp', '_price', '_price_tmp', '_variation_updated', '_stock', '_product_version', '_product_image_gallery_tmp', '_product_image_gallery', 'total_sales', '_parent_sku', '_children');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_product_attributes', '_regular_price', '_regular_price_tmp', '_sale_price', '_sale_price_tmp', 'pmxi_wholesale_price', 'pmxi_wholesale_price_tmp', '_sale_price_dates_from', '_sale_price_dates_from_tmp', '_sale_price_dates_to', '_sale_price_dates_to_tmp', '_price', '_price_tmp', '_variation_updated', '_stock', '_product_version', '_product_image_gallery_tmp', '_product_image_gallery', 'total_sales', '_parent_sku', '_children');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_product_attributes', '_regular_price', '_regular_price_tmp', '_sale_price', '_sale_price_tmp', 'pmxi_wholesale_price', 'pmxi_wholesale_price_tmp', '_sale_price_dates_from', '_sale_price_dates_from_tmp', '_sale_price_dates_to', '_sale_price_dates_to_tmp', '_price', '_price_tmp', '_variation_updated', '_stock', '_product_version', '_product_image_gallery_tmp', '_product_image_gallery', 'total_sales', '_parent_sku', '_children');

