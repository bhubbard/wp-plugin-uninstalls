-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nexi_xpay_data_version', 'nexi_applepay_merchant_identifier_certificate', 'nexi_applepay_merchant_identifier_certificate_key', 'nexi_applepay_ca_root_certificate', 'xpay_npg_available_methods', 'xpay_available_methods', 'xpay_logo_small', 'xpay_logo_large', 'nexi_unique', 'nexi_xpay_xpay_db_version', 'woocommerce_subscriptions_turn_off_automatic_payments', 'nexi_xpay_redirect_flush_rewrite_rule');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

