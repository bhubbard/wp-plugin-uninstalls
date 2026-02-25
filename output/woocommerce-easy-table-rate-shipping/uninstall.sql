-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'jem_table_rate_sub_shipping_method_id', 'woocommerce_tax_display_cart');

