-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_buckaroo_creditcard_settings', 'woocommerce_buckaroo_mastersettings_settings', 'woocommerce_force_ssl_checkout', 'woocommerce_buckaroo_applepay_settings', 'woocommerce_default_country', 'woocommerce_currency', 'woocommerce_buckaroo_paypal_settings', 'woocommerce_shipping_tax_class', 'buckaroo_creditcard_updated', 'buckaroo_credicard_updated', 'buckaroo_plugin_updated');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%buckarooAdminNotice';
DELETE FROM wp_options WHERE option_name LIKE '%buckaroo_require_woocommerce';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('shipping_country', '_wc_order_selected_payment_method', '_wc_order_payment_issuer', '_wc_order_captures', '_wc_order_authorized', '_payload_birthday', '_payment_method', '_payment_method_title', '_payment_method_transaction', '_payload_encrypted_card_data', 'buckaroo_idin', 'buckaroo_idin_bin', 'buckaroo_is_reserved', '_buckaroo_klarnakp_reservation_number', 'buckaroo_paymentReference', 'buckaroo_IBAN', 'buckaroo_BIC', 'buckaroo_accountHolderName', 'buckaroo_bankAccount', 'buckaroo_accountHolderCity', 'buckaroo_accountHolderCountry', '_wc_order_is_captured', '_buckaroo_order_in_test_mode', 'buckaroo_captures_refunded', '_wc_order_amount_captured', '_pushallowed', 'buckaroo_capture', 'buckaroo_settlement');
DELETE FROM wp_usermeta WHERE meta_key IN ('shipping_country', '_wc_order_selected_payment_method', '_wc_order_payment_issuer', '_wc_order_captures', '_wc_order_authorized', '_payload_birthday', '_payment_method', '_payment_method_title', '_payment_method_transaction', '_payload_encrypted_card_data', 'buckaroo_idin', 'buckaroo_idin_bin', 'buckaroo_is_reserved', '_buckaroo_klarnakp_reservation_number', 'buckaroo_paymentReference', 'buckaroo_IBAN', 'buckaroo_BIC', 'buckaroo_accountHolderName', 'buckaroo_bankAccount', 'buckaroo_accountHolderCity', 'buckaroo_accountHolderCountry', '_wc_order_is_captured', '_buckaroo_order_in_test_mode', 'buckaroo_captures_refunded', '_wc_order_amount_captured', '_pushallowed', 'buckaroo_capture', 'buckaroo_settlement');
DELETE FROM wp_termmeta WHERE meta_key IN ('shipping_country', '_wc_order_selected_payment_method', '_wc_order_payment_issuer', '_wc_order_captures', '_wc_order_authorized', '_payload_birthday', '_payment_method', '_payment_method_title', '_payment_method_transaction', '_payload_encrypted_card_data', 'buckaroo_idin', 'buckaroo_idin_bin', 'buckaroo_is_reserved', '_buckaroo_klarnakp_reservation_number', 'buckaroo_paymentReference', 'buckaroo_IBAN', 'buckaroo_BIC', 'buckaroo_accountHolderName', 'buckaroo_bankAccount', 'buckaroo_accountHolderCity', 'buckaroo_accountHolderCountry', '_wc_order_is_captured', '_buckaroo_order_in_test_mode', 'buckaroo_captures_refunded', '_wc_order_amount_captured', '_pushallowed', 'buckaroo_capture', 'buckaroo_settlement');
DELETE FROM wp_commentmeta WHERE meta_key IN ('shipping_country', '_wc_order_selected_payment_method', '_wc_order_payment_issuer', '_wc_order_captures', '_wc_order_authorized', '_payload_birthday', '_payment_method', '_payment_method_title', '_payment_method_transaction', '_payload_encrypted_card_data', 'buckaroo_idin', 'buckaroo_idin_bin', 'buckaroo_is_reserved', '_buckaroo_klarnakp_reservation_number', 'buckaroo_paymentReference', 'buckaroo_IBAN', 'buckaroo_BIC', 'buckaroo_accountHolderName', 'buckaroo_bankAccount', 'buckaroo_accountHolderCity', 'buckaroo_accountHolderCountry', '_wc_order_is_captured', '_buckaroo_order_in_test_mode', 'buckaroo_captures_refunded', '_wc_order_amount_captured', '_pushallowed', 'buckaroo_capture', 'buckaroo_settlement');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_capturebuckaroo%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_capturebuckaroo%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_capturebuckaroo%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_capturebuckaroo%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_refundbuckaroo%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_refundbuckaroo%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_refundbuckaroo%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_refundbuckaroo%';

