-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('paypal_status', 'paypal_title', 'paypal_api_username', 'paypal_api_password', 'paypal_api_signature', 'paypal_api_merchant_email', 'paypal_mode', 'auth_status', 'auth_title', 'auth_api_username', 'auth_api_signature', 'auth_mode', 'notiemailid', 'stripe_payment_currency', '
				  			stripe_payment_currency', 'stripe_title', 'stripe_status', 'stripe_publish_key', 'stripe_private_key', 'stripe_mode', 'templateid', 'user_email_body', 'admin_email_body', 'user_email_sub', 'admin_email_sub', 'notification_send_type', 'auth_typeofpay', 'auth_renewlength_set_by', 'auth_renewlength', 'auth_relengthunit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('transactionId', 'subscription_id', 'pay_amount', 'payer_name', 'payer_email', 'payer_comments', 'pay_throygh', 'is_recurring', 'wps_premium_buy_notice_wp_payment');
DELETE FROM wp_usermeta WHERE meta_key IN ('transactionId', 'subscription_id', 'pay_amount', 'payer_name', 'payer_email', 'payer_comments', 'pay_throygh', 'is_recurring', 'wps_premium_buy_notice_wp_payment');
DELETE FROM wp_termmeta WHERE meta_key IN ('transactionId', 'subscription_id', 'pay_amount', 'payer_name', 'payer_email', 'payer_comments', 'pay_throygh', 'is_recurring', 'wps_premium_buy_notice_wp_payment');
DELETE FROM wp_commentmeta WHERE meta_key IN ('transactionId', 'subscription_id', 'pay_amount', 'payer_name', 'payer_email', 'payer_comments', 'pay_throygh', 'is_recurring', 'wps_premium_buy_notice_wp_payment');

