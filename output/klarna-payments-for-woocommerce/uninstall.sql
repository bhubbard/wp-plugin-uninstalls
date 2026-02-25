-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_klarna_payments_settings', 'kp_has_valid_credentials', 'kp_uuid4', 'kp_credentials_error', 'kec_signing_key', 'woocommerce_prices_include_tax', 'woocommerce_ship_to_destination', 'kec_webhook', 'kp_unavailable_feature_ids', 'kom_settings', 'woocommerce_kco_settings', 'woocommerce_smart_coupon_apply_before_tax', 'krokedil_debuglog_kp', 'kp_plugin_features', 'klarna_acquiring_partner_key', 'klarna_payments_settings_page_config');
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'krokedil_support_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_email', 'dismissed_kp_check_permalinks_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_email', 'dismissed_kp_check_permalinks_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_email', 'dismissed_kp_check_permalinks_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_email', 'dismissed_kp_check_permalinks_notice');

