-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vindi_invalid_api_key', 'woocommerce_subscriptions_turn_off_automatic_payments', 'woocommerce_vindi-credit-card_settings', 'woocommerce_store_postcode', 'woocommerce_currency', 'woocommerce_tax_total_display', 'woocommerce_enable_guest_checkout', 'active_sitewide_plugins', 'vindi_product_message', 'vindi_payment_methods', 'vindi_merchant', 'vindi_plans');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vindi_customer_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('vindi_customer_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('vindi_customer_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vindi_customer_id');

