-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('eh_paypal_express_payer_id', 'woocommerce_eh_paypal_express_settings', 'woocommerce_enable_guest_checkout', 'woocommerce_calc_taxes', 'woocommerce_prices_include_tax', 'eh_access_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('order_comments', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_state', 'billing_email', 'billing_postcode', 'billing_phone', 'billing_country', 'billing_company');
DELETE FROM wp_usermeta WHERE meta_key IN ('order_comments', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_state', 'billing_email', 'billing_postcode', 'billing_phone', 'billing_country', 'billing_company');
DELETE FROM wp_termmeta WHERE meta_key IN ('order_comments', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_state', 'billing_email', 'billing_postcode', 'billing_phone', 'billing_country', 'billing_company');
DELETE FROM wp_commentmeta WHERE meta_key IN ('order_comments', 'billing_first_name', 'billing_last_name', 'billing_address_1', 'billing_state', 'billing_email', 'billing_postcode', 'billing_phone', 'billing_country', 'billing_company');

