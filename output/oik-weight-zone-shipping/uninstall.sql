-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_oik_weight_zone_shipping_settings', 'woocommerce_awd_shipping_settings', 'woocommerce_weight_unit');

