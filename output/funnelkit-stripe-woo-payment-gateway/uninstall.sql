-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fkwcs_apple_pay_domain_is_verified', 'fkwcs_apple_pay_verified_domain', 'fkwcs_live_created_webhook', 'fkwcs_wp_stripe', 'woocommerce_fkwcs_stripe_settings', 'fkwcs_mode', 'fkwcs_test_pub_key', 'fkwcs_pub_key', 'fkwcs_stripe_account_settings', 'fkwcs_wp_hash', 'fkwcs_live_webhook_secret', 'fkwcs_live_webhook_url', 'fkwcs_test_webhook_secret', 'fkwcs_test_created_webhook', 'fkwcs_secret_key', 'fkwcs_test_secret_key', 'fkwcs_stripe_statement_descriptor_full', 'fkwcs_stripe_statement_descriptor_prefix', 'woocommerce_default_country', 'fkwcs_setup_status', 'fkwcs_currency_fee', 'fkwcs_account_id', 'fkwcs_debug_log', 'fkwcs_stripe_statement_descriptor_should_customize', 'fkwcs_stripe_statement_descriptor_suffix', '_wc_activation_redirect');
DELETE FROM wp_options WHERE option_name LIKE '%_webhook_secret';
DELETE FROM wp_options WHERE option_name LIKE '%_secret_key';
DELETE FROM wp_options WHERE option_name LIKE '%_created_webhook';
DELETE FROM wp_options WHERE option_name LIKE 'fkwcs_user_tokens_%';
DELETE FROM wp_options WHERE option_name LIKE 'fkwcs_stripe_processing_intent_%';
DELETE FROM wp_options WHERE option_name LIKE '_fkwcs_refund_id_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_fkwcs_notices', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', '_payment_method');
DELETE FROM wp_usermeta WHERE meta_key IN ('_fkwcs_notices', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', '_payment_method');
DELETE FROM wp_termmeta WHERE meta_key IN ('_fkwcs_notices', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', '_payment_method');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_fkwcs_notices', 'billing_first_name', 'billing_last_name', 'first_name', 'last_name', '_payment_method');

