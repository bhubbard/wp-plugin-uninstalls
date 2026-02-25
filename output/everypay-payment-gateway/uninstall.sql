-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_everypay_settings', 'woocommerce_everypay_everypay_iris_enabled', 'woocommerce_everypay_everypay_iris_merchant_name', 'woocommerce_checkout_page_id');

