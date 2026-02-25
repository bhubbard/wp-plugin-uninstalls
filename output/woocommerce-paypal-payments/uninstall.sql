-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woocommerce_weight_unit', 'woocommerce_terms_page_id', 'woocommerce-ppcp-data-payment', 'woocommerce-ppcp-data-settings', 'woocommerce_ppcp-axo-gateway_settings', 'woocommerce_ppcp-recaptcha_settings', 'woocommerce-ppcp-is-new-merchant', 'woocommerce-ppcp-settings', 'woocommerce_store_postcode', 'woocommerce_paypal_branded', 'ppcp_payment_tokens_migration_initialized', 'woocommerce_ppcp-oxxo-gateway_settings', 'woocommerce_ppcp-pay-upon-invoice-gateway_settings', 'woocommerce_ppcp-card-button-gateway_settings', 'ppcp-request-ids', 'ppcp_bn_code', 'woocommerce-ppcp-version', 'ppcp_has_ppec_subscriptions');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'ppcp_cart_by_order_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ppcp_customer_id', 'ppcp_guest_customer_id', '_ppcp_target_customer_id', 'ppcp-vault-token', '_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('ppcp_customer_id', 'ppcp_guest_customer_id', '_ppcp_target_customer_id', 'ppcp-vault-token', '_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('ppcp_customer_id', 'ppcp_guest_customer_id', '_ppcp_target_customer_id', 'ppcp-vault-token', '_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ppcp_customer_id', 'ppcp_guest_customer_id', '_ppcp_target_customer_id', 'ppcp-vault-token', '_elementor_data');

