-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_prices_include_tax', 'woocommerce_price_num_decimals', 'woocommerce_currency', 'woo_sunarc_cart_notices', 'woo_sunarc_shipping_cost', 'split_by_warehouse_falg', 'splitorderwarehouse');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_customer_user', 'order_status_result', '_order_ispliter', '_payment_method_title', '_payment_method', '_order_shipping', '_order_discount', '_cart_discount', '_order_tax', '_order_shipping_tax', '_order_key', '_order_currency', '_prices_include_tax', '_customer_ip_address', '_customer_user_agent', '_price', '_order_total', 'order_ids', 'order_email_sent');
DELETE FROM wp_usermeta WHERE meta_key IN ('_customer_user', 'order_status_result', '_order_ispliter', '_payment_method_title', '_payment_method', '_order_shipping', '_order_discount', '_cart_discount', '_order_tax', '_order_shipping_tax', '_order_key', '_order_currency', '_prices_include_tax', '_customer_ip_address', '_customer_user_agent', '_price', '_order_total', 'order_ids', 'order_email_sent');
DELETE FROM wp_termmeta WHERE meta_key IN ('_customer_user', 'order_status_result', '_order_ispliter', '_payment_method_title', '_payment_method', '_order_shipping', '_order_discount', '_cart_discount', '_order_tax', '_order_shipping_tax', '_order_key', '_order_currency', '_prices_include_tax', '_customer_ip_address', '_customer_user_agent', '_price', '_order_total', 'order_ids', 'order_email_sent');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_customer_user', 'order_status_result', '_order_ispliter', '_payment_method_title', '_payment_method', '_order_shipping', '_order_discount', '_cart_discount', '_order_tax', '_order_shipping_tax', '_order_key', '_order_currency', '_prices_include_tax', '_customer_ip_address', '_customer_user_agent', '_price', '_order_total', 'order_ids', 'order_email_sent');

