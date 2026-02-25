-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icl_enable_multi_currency', 'woocommerce_currency', 'woocommerce_wechatpay_settings', 'woo_wechatpay_plugin_version', 'woocommerce_email_footer_text', 'woo_wechatpay_flush');

