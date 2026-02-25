-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cardgate_version', 'is_callback_status_change', 'cgp_version', 'cgp_mode', 'cgp_siteid', 'cgp_hashkey', 'cgp_merchant_id', 'cgp_merchant_api_key', 'cgp_checkoutdisplay', 'woocommerce_default_gateway', 'woocommerce_default_country', 'woocommerce_cardgateafterpay_settings', 'woocommerce_cardgatebancontact_settings', 'woocommerce_cardgatebanktransfer_settings', 'woocommerce_cardgatebillink_settings', 'woocommerce_cardgatebitcoin_settings', 'woocommerce_cardgatecreditcard_settings', 'woocommerce_cardgatecrypto_settings', 'woocommerce_cardgatedirectdebit_settings', 'woocommerce_cardgategiftcard_settings', 'woocommerce_cardgateideal_settings', 'woocommerce_cardgateidealqr_settings', 'woocommerce_cardgateklarna_settings', 'woocommerce_cardgateonlineueberweisen_settings', 'woocommerce_cardgatepaypal_settings', 'woocommerce_cardgatepaysafecard_settings', 'woocommerce_cardgatepaysafecash_settings', 'woocommerce_cardgateprzelewy24_settings', 'woocommerce_cardgatesofortbanking_settings', 'woocommerce_cardgatespraypay_settings');
DELETE FROM wp_options WHERE option_name LIKE '%_extra_charges';
DELETE FROM wp_options WHERE option_name LIKE '%_extra_charges_label';
DELETE FROM wp_options WHERE option_name LIKE '%_extra_charges_type';

