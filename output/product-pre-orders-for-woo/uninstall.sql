-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pre_order_setting_default', 'woocommerce_feature_custom_order_tables_enabled', 'woocommerce_custom_orders_table_enabled', 'villatheme_hide_admin_toolbar', 'villatheme_call', 'villatheme_ads', 'villatheme_notices', 'villatheme_called');
DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notices';
DELETE FROM wp_options WHERE option_name LIKE '%_wp_reviewed';
DELETE FROM wp_options WHERE option_name LIKE '%_start_use';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';
DELETE FROM wp_options WHERE option_name LIKE '%_hide_notices';
DELETE FROM wp_options WHERE option_name LIKE 'villatheme_hide_notices_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpro_date_variable', '_wpro_time_variable', '_wpro_variable_is_preorder', '_wpro_date', '_wpro_time', '_simple_preorder', '_wpro_price', '_wpro_label_variable', '_wpro_price_variable', '_wpro_no_date_label', '_wpro_date_label', '_wpro_manage_price', '_wpro_price_type', '_wpro_amount_price', '_wpro_label', '_wpro_date_label_variable', '_wpro_no_date_label_variable', '_wpro_manage_price_variable', '_wpro_price_type_variable', '_wpro_amount_price_variable', '_regular_price', '_sale_price');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpro_date_variable', '_wpro_time_variable', '_wpro_variable_is_preorder', '_wpro_date', '_wpro_time', '_simple_preorder', '_wpro_price', '_wpro_label_variable', '_wpro_price_variable', '_wpro_no_date_label', '_wpro_date_label', '_wpro_manage_price', '_wpro_price_type', '_wpro_amount_price', '_wpro_label', '_wpro_date_label_variable', '_wpro_no_date_label_variable', '_wpro_manage_price_variable', '_wpro_price_type_variable', '_wpro_amount_price_variable', '_regular_price', '_sale_price');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpro_date_variable', '_wpro_time_variable', '_wpro_variable_is_preorder', '_wpro_date', '_wpro_time', '_simple_preorder', '_wpro_price', '_wpro_label_variable', '_wpro_price_variable', '_wpro_no_date_label', '_wpro_date_label', '_wpro_manage_price', '_wpro_price_type', '_wpro_amount_price', '_wpro_label', '_wpro_date_label_variable', '_wpro_no_date_label_variable', '_wpro_manage_price_variable', '_wpro_price_type_variable', '_wpro_amount_price_variable', '_regular_price', '_sale_price');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpro_date_variable', '_wpro_time_variable', '_wpro_variable_is_preorder', '_wpro_date', '_wpro_time', '_simple_preorder', '_wpro_price', '_wpro_label_variable', '_wpro_price_variable', '_wpro_no_date_label', '_wpro_date_label', '_wpro_manage_price', '_wpro_price_type', '_wpro_amount_price', '_wpro_label', '_wpro_date_label_variable', '_wpro_no_date_label_variable', '_wpro_manage_price_variable', '_wpro_price_type_variable', '_wpro_amount_price_variable', '_regular_price', '_sale_price');

