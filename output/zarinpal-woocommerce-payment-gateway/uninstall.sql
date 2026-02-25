-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_zpal_referrer_id', 'woocommerce_WC_ZPal_settings');
DELETE FROM wp_options WHERE option_name LIKE 'zarinpal_fee_detection_done_%';

