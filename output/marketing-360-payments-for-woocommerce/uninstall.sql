-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_stripe_settings', 'woocommerce_store_postcode', 'wc_stripe_show_ssl_notice', 'wc_stripe_show_keys_notice', 'wc_stripe_show_3ds_notice', 'wc_stripe_show_phpver_notice', 'wc_stripe_show_wcver_notice', 'wc_stripe_show_curl_notice', 'wc_stripe_show_sca_notice', 'wc_stripe_show_changed_keys_notice', 'wc_stripe_show_style_notice', 'wc_m360_payments_version', 'wc_m360_payments_show_style_notice', 'wc_m360_payments_show_sca_notice', 'woocommerce_gateway_m360_payments_retention', '_wcstripe_feature_upe', 'woocommerce_default_country', 'm360_client_token', 'm360_client_token_expiration', 'woocommerce_stripe_account_details', 'woocommerce_email_footer_text', 'wc_stripe_show_styles_notice', 'wc_stripe_show_request_api_notice', 'wc_stripe_show_apple_pay_notice', 'wc_stripe_version', 'wc_stripe_level3_not_allowed');
DELETE FROM wp_options WHERE option_name LIKE '%_notice';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'wc_stripe_processing_intent_%';
DELETE FROM wp_options WHERE option_name LIKE 'stripe_sources_%';
DELETE FROM wp_options WHERE option_name LIKE 'stripe_customer_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_stripe_customer_id', '_stripe_source_id', '_stripe_refund_id', 'billing_email', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', '_payment_method', '_payment_method_title', '_stripe_card_id', '_stripe_intent_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('_stripe_customer_id', '_stripe_source_id', '_stripe_refund_id', 'billing_email', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', '_payment_method', '_payment_method_title', '_stripe_card_id', '_stripe_intent_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('_stripe_customer_id', '_stripe_source_id', '_stripe_refund_id', 'billing_email', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', '_payment_method', '_payment_method_title', '_stripe_card_id', '_stripe_intent_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_stripe_customer_id', '_stripe_source_id', '_stripe_refund_id', 'billing_email', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', '_payment_method', '_payment_method_title', '_stripe_card_id', '_stripe_intent_id');

