-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_stripe_authenticated_routes', 'wc_stripe_connect_notice', 'woocommerce_stripe_email_receipt', 'woocommerce_store_postcode', 'woocommerce_new_order_settings', 'woocommerce_stripe_plaid_settings', 'woocommerce_stripe_ach_settings', 'woocommerce_de_secondcheckout', 'woocommerce_gateway_order');
DELETE FROM wp_options WHERE option_name LIKE 'stripe_lock_order_%';

