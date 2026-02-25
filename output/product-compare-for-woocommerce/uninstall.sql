-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('proco_product_compare', 'current_products_id', 'current_compare_cat_id', 'woocommerce_weight_unit', 'woocommerce_dimension_unit', 'woocommerce_currency');

