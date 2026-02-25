-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_favepay_settings');
DELETE FROM wp_options WHERE option_name LIKE 'wc_favepay_order_payment_url_%';

