-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('depart_deposit_setting', 'depart_payment_plan', 'depart_deposit_rule', 'woocommerce_prices_include_tax', 'woocommerce_checkout_pay_endpoint', 'woocommerce_checkout_order_received_endpoint', 'woocommerce_checkout_order_pay_endpoint', 'woocommerce_allow_bulk_remove_personal_data', 'woocommerce_feature_custom_order_tables_enabled', 'woocommerce_custom_orders_table_enabled', 'villatheme_hide_admin_toolbar', 'woocommerce_email_footer_text', 'villatheme_call', 'villatheme_notices', 'villatheme_called', 'villatheme_ads');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('viwec_settings_type', 'viwec_email_structure', 'depart_custom_plans', 'depart_exists_plans', 'depart_deposit_disabled', 'depart_deposit_type', '_wp_trash_meta_status', '_wp_trash_meta_time');
DELETE FROM wp_usermeta WHERE meta_key IN ('viwec_settings_type', 'viwec_email_structure', 'depart_custom_plans', 'depart_exists_plans', 'depart_deposit_disabled', 'depart_deposit_type', '_wp_trash_meta_status', '_wp_trash_meta_time');
DELETE FROM wp_termmeta WHERE meta_key IN ('viwec_settings_type', 'viwec_email_structure', 'depart_custom_plans', 'depart_exists_plans', 'depart_deposit_disabled', 'depart_deposit_type', '_wp_trash_meta_status', '_wp_trash_meta_time');
DELETE FROM wp_commentmeta WHERE meta_key IN ('viwec_settings_type', 'viwec_email_structure', 'depart_custom_plans', 'depart_exists_plans', 'depart_deposit_disabled', 'depart_deposit_type', '_wp_trash_meta_status', '_wp_trash_meta_time');

