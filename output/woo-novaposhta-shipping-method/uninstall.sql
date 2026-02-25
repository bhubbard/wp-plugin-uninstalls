-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woo_nova_poshta_shipping_method_settings', 'woocommerce_enable_shipping_calc');

