-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_zerthpay_settings');
DELETE FROM wp_options WHERE option_name LIKE 'zerthpay_webhook_processed_%';

