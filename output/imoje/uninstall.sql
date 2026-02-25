-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_imoje_blik_settings', 'woocommerce_imoje_settings', 'woocommerce_imoje_paylater_settings', 'woocommerce_imoje_cards_settings', 'woocommerce_imoje_pbl_settings', 'woocommerce_imoje_visa_settings', 'woocommerce_imoje_installments_settings', 'woocommerce_imoje_wallet_settings', 'woocommerce_imoje_leasenow_settings', 'woocommerce_imoje_wt_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

