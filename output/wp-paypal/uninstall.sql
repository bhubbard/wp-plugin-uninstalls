-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_paypal_enable_ipn_validation', 'wp_paypal_enable_receiver_check', 'wp_paypal_merchant_id', 'wp_paypal_email', 'wp_paypal_checkout_options', 'wp_paypal_enable_debug', 'wp_paypal_enable_testmode', 'wp_paypal_db_version', 'wp_paypal_currency_code', 'wp_paypal_checkout_load_scripts_globally', 'wppaypal_logfile_suffix', 'wp_paypal_email_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_txn_id', '_first_name', '_last_name', '_payer_email', '_mc_gross', '_payment_status', '_custom', '_ipn_data', '_payment_data', 'wp-paypal-custom-field');
DELETE FROM wp_usermeta WHERE meta_key IN ('_txn_id', '_first_name', '_last_name', '_payer_email', '_mc_gross', '_payment_status', '_custom', '_ipn_data', '_payment_data', 'wp-paypal-custom-field');
DELETE FROM wp_termmeta WHERE meta_key IN ('_txn_id', '_first_name', '_last_name', '_payer_email', '_mc_gross', '_payment_status', '_custom', '_ipn_data', '_payment_data', 'wp-paypal-custom-field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_txn_id', '_first_name', '_last_name', '_payer_email', '_mc_gross', '_payment_status', '_custom', '_ipn_data', '_payment_data', 'wp-paypal-custom-field');

