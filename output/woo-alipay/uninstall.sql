-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('icl_enable_multi_currency', 'woocommerce_currency', 'woocommerce_alipay_settings', 'woo_alipay_plugin_version', 'woocommerce_email_footer_text');

