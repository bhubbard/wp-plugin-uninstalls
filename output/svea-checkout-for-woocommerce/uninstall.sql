-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sco_request_violation', 'woocommerce_myaccount_svea_subscription_payment_method_endpoint', 'woocommerce_enable_order_comments', 'sco_last_push', 'svea_checkout_admin_notices', 'active_sitewide_plugins', 'woocommerce_price_num_decimals', 'woocommerce_checkout_company_field', 'woocommerce_checkout_address_2_field', 'woocommerce_checkout_phone_field', 'woocommerce_calc_taxes', 'woocommerce_tax_round_at_subtotal', 'woocommerce_email_footer_text');
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_sco_country_credentials_status_code_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_svea_co_minimum_age');
DELETE FROM wp_usermeta WHERE meta_key IN ('_svea_co_minimum_age');
DELETE FROM wp_termmeta WHERE meta_key IN ('_svea_co_minimum_age');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_svea_co_minimum_age');

