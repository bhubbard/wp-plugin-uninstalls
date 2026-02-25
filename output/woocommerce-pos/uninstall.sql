-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_default_log_handler', 'woocommerce_pos_uuid', 'woocommerce_currency_pos', 'woocommerce_notify_no_stock_amount', 'woocommerce_pos_secret_key', 'woocommerce_pos_refresh_secret_key', 'active_sitewide_plugins', 'woocommerce_pos_db_version', 'wcpos_template_validation_logs', 'wcpos_active_template_receipt', 'woocommerce_tax_total_display', 'woocommerce_pos_pro_license_status');
DELETE FROM wp_options WHERE option_name LIKE '%general';
DELETE FROM wp_options WHERE option_name LIKE '%checkout';
DELETE FROM wp_options WHERE option_name LIKE '%tools';
DELETE FROM wp_options WHERE option_name LIKE '%payment_gateways';
DELETE FROM wp_options WHERE option_name LIKE '%visibility';
DELETE FROM wp_options WHERE option_name LIKE 'wcpos_active_template_%';
DELETE FROM wp_options WHERE option_name LIKE 'wcpos_auth_fail_%';
DELETE FROM wp_options WHERE option_name LIKE 'wcpos_auth_lock_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wcpos_seen_extension_slugs', '_woocommerce_pos_uuid', '_template_language', '_pos_cash_amount_tendered', '_pos_cash_change', '_woocommerce_pos_refresh_tokens', '_woocommerce_pos_last_access', '_template_file_path', '_order_tax', '_order_shipping_tax');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wcpos_seen_extension_slugs', '_woocommerce_pos_uuid', '_template_language', '_pos_cash_amount_tendered', '_pos_cash_change', '_woocommerce_pos_refresh_tokens', '_woocommerce_pos_last_access', '_template_file_path', '_order_tax', '_order_shipping_tax');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wcpos_seen_extension_slugs', '_woocommerce_pos_uuid', '_template_language', '_pos_cash_amount_tendered', '_pos_cash_change', '_woocommerce_pos_refresh_tokens', '_woocommerce_pos_last_access', '_template_file_path', '_order_tax', '_order_shipping_tax');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wcpos_seen_extension_slugs', '_woocommerce_pos_uuid', '_template_language', '_pos_cash_amount_tendered', '_pos_cash_change', '_woocommerce_pos_refresh_tokens', '_woocommerce_pos_last_access', '_template_file_path', '_order_tax', '_order_shipping_tax');

