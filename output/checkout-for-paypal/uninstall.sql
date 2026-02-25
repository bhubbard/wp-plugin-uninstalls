-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('checkout_for_paypal_email_options', 'checkout_for_paypal_sk_auto_encoded', 'checkout_for_paypal_db_version', 'checkout_for_paypal_load_scripts_globally', 'checkout_for_paypal_locale', 'checkout_for_paypal_buyer_country', 'checkoutforpaypal_logfile_suffix', 'checkout_for_paypal_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_txn_id', '_first_name', '_last_name', '_email', '_mc_gross', '_payment_status', '_payment_data', 'checkout-for-paypal-custom-field');
DELETE FROM wp_usermeta WHERE meta_key IN ('_txn_id', '_first_name', '_last_name', '_email', '_mc_gross', '_payment_status', '_payment_data', 'checkout-for-paypal-custom-field');
DELETE FROM wp_termmeta WHERE meta_key IN ('_txn_id', '_first_name', '_last_name', '_email', '_mc_gross', '_payment_status', '_payment_data', 'checkout-for-paypal-custom-field');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_txn_id', '_first_name', '_last_name', '_email', '_mc_gross', '_payment_status', '_payment_data', 'checkout-for-paypal-custom-field');

