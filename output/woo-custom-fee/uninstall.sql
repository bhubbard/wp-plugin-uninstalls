-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_enable_custom_shipping_fee', 'wc_custom_shipping_fee_type', 'wc_custom_fee_minimum_cart_amount', 'wc_custom_fee_condition_type', 'wc_custom_shipping_fee_title', 'wc_custom_shipping_fee_amount', 'wc_custom_shipping_fee_include_shipping_charge');

