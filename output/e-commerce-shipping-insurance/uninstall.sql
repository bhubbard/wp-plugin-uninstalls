-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_shipping_insurance_default_state', 'woocommerce_shipping_insurance_label_text', 'woocommerce_shipping_insurance_price');

