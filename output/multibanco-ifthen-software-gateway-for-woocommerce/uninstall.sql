-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_multibanco_ifthen_for_woocommerce_settings', 'woocommerce_mbway_ifthen_for_woocommerce_settings', 'woocommerce_payshop_ifthen_for_woocommerce_settings', 'woocommerce_creditcard_ifthen_for_woocommerce_settings', 'woocommerce_cofidispay_ifthen_for_woocommerce_settings', 'woocommerce_gateway_ifthen_ifthen_for_woocommerce_settings', 'multibanco_last_incremental_expire_ref', 'woocommerce_checkout_pay_endpoint', 'woocommerce_hold_stock_minutes', 'woocommerce_manage_stock');
DELETE FROM wp_options WHERE option_name LIKE '%_callback_email_sent';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE '%_gateway_methods';
DELETE FROM wp_options WHERE option_name LIKE '%_gateways';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_ifthen_for_woocommerce_callback_email_sent';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_newmethod_notice_dismiss_until';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_newmethod_notice_dismiss_until';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_newmethod_notice_dismiss_until';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_newmethod_notice_dismiss_until';

