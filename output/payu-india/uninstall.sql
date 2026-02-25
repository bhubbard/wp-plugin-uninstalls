-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_payubiz_settings', 'woocommerce_pay_page_id', 'woocommerce_enable_guest_checkout', 'woocommerce_version', 'woocommerce_enable_guest_checkout_old');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_company', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'shipping_phone', 'shipping_email', 'payu_phone', '_woocommerce_persistent_cart_1', 'order_txnid');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_company', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'shipping_phone', 'shipping_email', 'payu_phone', '_woocommerce_persistent_cart_1', 'order_txnid');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_company', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'shipping_phone', 'shipping_email', 'payu_phone', '_woocommerce_persistent_cart_1', 'order_txnid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_first_name', 'billing_last_name', 'billing_company', 'billing_phone', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_state', 'billing_postcode', 'billing_country', 'shipping_phone', 'shipping_email', 'payu_phone', '_woocommerce_persistent_cart_1', 'order_txnid');

