-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_qliro_one_settings', 'woocommerce_qliro_one_banner_widget_enabled', 'woocommerce_qliro_one_payment_widget_enabled', 'krokedil_debuglog_qliro_one', 'woocommerce_smart_coupon_apply_before_tax', 'qliro_checkout_settings_page_config');
DELETE FROM wp_options WHERE option_name LIKE 'qoc_shipping_data_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_shipping_email');
DELETE FROM wp_usermeta WHERE meta_key IN ('_shipping_email');
DELETE FROM wp_termmeta WHERE meta_key IN ('_shipping_email');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_shipping_email');

