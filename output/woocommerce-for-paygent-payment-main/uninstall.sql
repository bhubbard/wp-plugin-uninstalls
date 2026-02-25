-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc-paygent-mb', 'wc-paygent-paidy', 'wc-paygent-paypay', 'wc-paygent-rakutenpay', 'wc-paygent-bn', 'wc-paygent-atm', 'wc-paygent-mccc', 'wc-paygent-cc', 'wc-paygent-cs', 'jp4wc_card_expiry_settings', 'wc_paygent_options_name', 'wc-paygent-test-client-cert-file', 'jp4wcoal_max_attempts', 'jp4wcoal_lockout_duration', 'jp4wcoal_cleanup_interval', 'wc-paygent-prefix_order', 'woocommerce_prices_include_tax', 'wc-paygent-testmode', 'wc-paygent-test-mid', 'wc-paygent-test-tokenkey', 'wc-paygent-mid', 'wc-paygent-tokenkey', 'wc-paygent-cid', 'wc-paygent-cpass', 'wc-paygent-test-cid', 'wc-paygent-test-cpass', 'wc-paygent-sid', 'wc-paygent-hash_check', 'wc-paygent-test-hash_code', 'wc-paygent-hash_code', 'woocommerce_price_num_decimals', 'wc-paygent-debug', 'active_sitewide_plugins', 'paygent_ip_permission_error_sent');
DELETE FROM wp_options WHERE option_name LIKE '%sid';
DELETE FROM wp_options WHERE option_name LIKE '%testmode';
DELETE FROM wp_options WHERE option_name LIKE '%hash_check';
DELETE FROM wp_options WHERE option_name LIKE '%prefix_order';
DELETE FROM wp_options WHERE option_name LIKE '%debug';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pay_center_number', '_customer_number', '_conf_number', '_payment_limit_date', 'wc_last_active', 'last_update', 'jp4wc_password_update');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pay_center_number', '_customer_number', '_conf_number', '_payment_limit_date', 'wc_last_active', 'last_update', 'jp4wc_password_update');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pay_center_number', '_customer_number', '_conf_number', '_payment_limit_date', 'wc_last_active', 'last_update', 'jp4wc_password_update');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pay_center_number', '_customer_number', '_conf_number', '_payment_limit_date', 'wc_last_active', 'last_update', 'jp4wc_password_update');

