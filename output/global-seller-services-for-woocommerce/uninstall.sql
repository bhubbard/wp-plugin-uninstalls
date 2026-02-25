-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dr_flush_rewrite_rules_flag', 'woocommerce_tax_display_cart', 'woocommerce_digitalriver_settings', 'dr_endpoints_hash', 'woocommerce_tax_display_shop', 'woocommerce_enable_shipping_calc');
DELETE FROM wp_options WHERE option_name LIKE 'dr_compliance_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dr_order_id', 'dr_checkout_object', 'digitalriver_customer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('dr_order_id', 'dr_checkout_object', 'digitalriver_customer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('dr_order_id', 'dr_checkout_object', 'digitalriver_customer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dr_order_id', 'dr_checkout_object', 'digitalriver_customer_id');

