-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('payuni_payment_language', 'payuni_payment_testmode_enabled', 'payuni_payment_merchant_id_test', 'payuni_payment_merchant_id', 'payuni_payment_hashkey_test', 'payuni_payment_hashkey', 'payuni_payment_hashiv_test', 'payuni_payment_hashiv', 'payuni_payment_debug_log_enabled', 'payuni_payment_einvoice_enabled', 'payuni_payment_installment_number_of_payments');

