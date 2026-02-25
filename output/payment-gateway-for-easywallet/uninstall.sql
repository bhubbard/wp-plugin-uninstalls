-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hkdigital_easywallet_version_option', 'woocommerce_payment-gateway-for-easy-wallet_settings', 'hkdigital_payment-gateway-for-easy-wallet_verification_id', 'hkdigital_check_activation_easy_wallet', 'hkdigital_dump');

