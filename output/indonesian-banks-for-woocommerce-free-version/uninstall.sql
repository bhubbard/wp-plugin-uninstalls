-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_bank_bni_accounts', 'woocommerce_bank_bri_accounts', 'woocommerce_bank_mandiri_accounts', 'woocommerce_paymentcode_enabled');

