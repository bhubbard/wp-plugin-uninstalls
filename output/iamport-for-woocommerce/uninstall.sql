-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_iamport_sdk_version', 'iamport_user_code', 'iamport_rest_key', 'iamport_rest_secret', 'woocommerce_iamport_strip_line_feed_in_address', 'woocommerce_iamport_app_scheme', '_iamport_customer_prefix', 'woocommerce_iamport_refund_status_label', 'woocommerce_iamport_exchange_status_label', 'woocommerce_iamport_awaiting_vbank_status_label', 'woocommerce_iamport_card_max_quota', 'woocommerce_iamport_custom_status_as_paid', 'woocommerce_iamport_eximbay_settings', 'woocommerce_iamport_subscription_quota_description', '_iamport_rsa_keyphrase', '_iamport_rsa_private_key', 'woocommerce_iamport_subscription_checking_amount', 'woocommerce_iamport_auto_complete', 'woocommerce_iamport_exchange_capable', 'woocommerce_iamport_exchange_limit', 'woocommerce_iamport_refund_capable', 'woocommerce_iamport_refund_limit', 'woocommerce_iamport_naverpay_ext_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('customer_uid');
DELETE FROM wp_usermeta WHERE meta_key IN ('customer_uid');
DELETE FROM wp_termmeta WHERE meta_key IN ('customer_uid');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customer_uid');

