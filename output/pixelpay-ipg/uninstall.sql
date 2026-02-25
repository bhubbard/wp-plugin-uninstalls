-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_pay_page_id', 'woocommerce_PixelPay_IPG_Gateway_settings');

