-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_email_header_image', 'woocommerce_dialogpay_settings', 'woocommerce_dialogpay_enabled', 'woocommerce_dialogpay_title', 'woocommerce_dialogpay_description', 'woocommerce_dialogpay_merchant_id', 'woocommerce_dialogpay_payment_service_id', 'woocommerce_dialogpay_database_name', 'woocommerce_dialogpay_dialogpay_user_name', 'woocommerce_dialogpay_dialogpay_user_password', 'woocommerce_dialogpay_public_key', 'woocommerce_dialogpay_private_key', 'woocommerce_dialogpay_base_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dialogpay_awaiting_webhook');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dialogpay_awaiting_webhook');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dialogpay_awaiting_webhook');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dialogpay_awaiting_webhook');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_dialogpay_event_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_dialogpay_event_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_dialogpay_event_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_dialogpay_event_%';

