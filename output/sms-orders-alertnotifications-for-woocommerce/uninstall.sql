-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('egoi_api_key', 'egoi_sms_order_sender', 'egoi_sms_order_recipients', 'egoi_sms_order_texts', 'egoi_sms_order_payment_texts', 'egoi_email_order_payment_texts', 'egoi_tracking_carriers_urls', 'egoi_sms_follow_price', 'egoi_sms_abandoned_cart', 'egoi_custom_carriers', 'egoi_transactional_email', 'egoi_activation_data', 'egoi_sms_counter', 'egoi_has_list', 'teste_egoi_1');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('egoi_notification_option', 'billing_phone', 'billing_country');
DELETE FROM wp_usermeta WHERE meta_key IN ('egoi_notification_option', 'billing_phone', 'billing_country');
DELETE FROM wp_termmeta WHERE meta_key IN ('egoi_notification_option', 'billing_phone', 'billing_country');
DELETE FROM wp_commentmeta WHERE meta_key IN ('egoi_notification_option', 'billing_phone', 'billing_country');

