-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_flexicardsltfo_settings', 'woocommerce_default_country', 'woocommerce_currency', 'woocommerce_prices_include_tax');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('status', 'created_via', 'posted', 'cart', 'cart_hash', 'chosen_shipping_methods', 'shipping_packages', 'customer_id', 'order_vat_exempt', 'currency', 'prices_include_tax', 'customer_note', 'payment_method', 'shipping_total', 'discount_total', 'discount_tax', 'cart_tax', 'shipping_tax', 'total', 'customer_ip_address', 'customer_user_agent');
DELETE FROM wp_usermeta WHERE meta_key IN ('status', 'created_via', 'posted', 'cart', 'cart_hash', 'chosen_shipping_methods', 'shipping_packages', 'customer_id', 'order_vat_exempt', 'currency', 'prices_include_tax', 'customer_note', 'payment_method', 'shipping_total', 'discount_total', 'discount_tax', 'cart_tax', 'shipping_tax', 'total', 'customer_ip_address', 'customer_user_agent');
DELETE FROM wp_termmeta WHERE meta_key IN ('status', 'created_via', 'posted', 'cart', 'cart_hash', 'chosen_shipping_methods', 'shipping_packages', 'customer_id', 'order_vat_exempt', 'currency', 'prices_include_tax', 'customer_note', 'payment_method', 'shipping_total', 'discount_total', 'discount_tax', 'cart_tax', 'shipping_tax', 'total', 'customer_ip_address', 'customer_user_agent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('status', 'created_via', 'posted', 'cart', 'cart_hash', 'chosen_shipping_methods', 'shipping_packages', 'customer_id', 'order_vat_exempt', 'currency', 'prices_include_tax', 'customer_note', 'payment_method', 'shipping_total', 'discount_total', 'discount_tax', 'cart_tax', 'shipping_tax', 'total', 'customer_ip_address', 'customer_user_agent');

