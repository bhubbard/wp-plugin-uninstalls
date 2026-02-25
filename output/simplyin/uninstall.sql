-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('SimplyInApiConnection', 'SimplyIn_Backend_Url', 'SimplyIn_Environment', 'simplyin_register_by_default', 'SimplyInShippingMappingCache', 'SimplyInSettingsErrorMsg', 'SimplyInSettingsSuccessMsg', 'SimplyInRegisterByDefaultDisabled', 'simplyin_api_key', 'SimplyInLogisticsPartnersOrder', 'woocommerce_checkout_order_received_endpoint', 'woocommerce_checkout_order_pay_endpoint', 'SIMPLYIN_DOCS_INFO', 'woocommerce_version', 'SimplyIn_Api_Logs', 'woocommerce_simplyin_settings', 'woocommerce_tax_display_cart', 'SimplyInShippingIntegrations', 'SimplyInSwitchLastChange', 'SimplyInLastSyncTimestamp', 'SimplyInTransactionHistoryLengthDay', 'SimplyInRegisterByDefaultStateOld');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('billing_phone', '_simplyin_payment_timeout_failed', '_simplyin_payment_timeout_failed_payment_uuid', 'SimplyInUserExist', 'SimplyInUserHmacEmail', 'SimplyInUserStatus');
DELETE FROM wp_usermeta WHERE meta_key IN ('billing_phone', '_simplyin_payment_timeout_failed', '_simplyin_payment_timeout_failed_payment_uuid', 'SimplyInUserExist', 'SimplyInUserHmacEmail', 'SimplyInUserStatus');
DELETE FROM wp_termmeta WHERE meta_key IN ('billing_phone', '_simplyin_payment_timeout_failed', '_simplyin_payment_timeout_failed_payment_uuid', 'SimplyInUserExist', 'SimplyInUserHmacEmail', 'SimplyInUserStatus');
DELETE FROM wp_commentmeta WHERE meta_key IN ('billing_phone', '_simplyin_payment_timeout_failed', '_simplyin_payment_timeout_failed_payment_uuid', 'SimplyInUserExist', 'SimplyInUserHmacEmail', 'SimplyInUserStatus');

