-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hkd_idram_version_option', 'woocommerce_hk-idram-payment-gateway_settings', 'language_payment_idram', 'hkd_idram_checkout_id', 'hkd_check_activation_idram');

