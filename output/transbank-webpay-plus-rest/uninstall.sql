-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id', 'woocommerce_myaccount_payment_methods_endpoint', 'woocommerce_version', 'tbk_review_notice_showed', 'transbank_webpay_oneclick_rest_showed_welcome_message', 'transbank_webpay_rest_showed_welcome_message');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';

