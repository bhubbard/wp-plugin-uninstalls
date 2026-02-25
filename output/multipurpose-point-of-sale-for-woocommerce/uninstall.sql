-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_store_address', 'woocommerce_store_address_2', 'woocommerce_store_city', 'woocommerce_store_postcode', 'woocommerce_default_country');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_backorders', '_price', 'billing_phone', '_order_total', 'first_name', 'billing_first_name', 'billing_email', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'shipping_first_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_postcode', 'shipping_country', 'shipping_state', '_customer_user', '_stock');
DELETE FROM wp_usermeta WHERE meta_key IN ('_backorders', '_price', 'billing_phone', '_order_total', 'first_name', 'billing_first_name', 'billing_email', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'shipping_first_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_postcode', 'shipping_country', 'shipping_state', '_customer_user', '_stock');
DELETE FROM wp_termmeta WHERE meta_key IN ('_backorders', '_price', 'billing_phone', '_order_total', 'first_name', 'billing_first_name', 'billing_email', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'shipping_first_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_postcode', 'shipping_country', 'shipping_state', '_customer_user', '_stock');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_backorders', '_price', 'billing_phone', '_order_total', 'first_name', 'billing_first_name', 'billing_email', 'billing_address_1', 'billing_address_2', 'billing_city', 'billing_postcode', 'billing_country', 'billing_state', 'shipping_first_name', 'shipping_address_1', 'shipping_address_2', 'shipping_city', 'shipping_postcode', 'shipping_country', 'shipping_state', '_customer_user', '_stock');

