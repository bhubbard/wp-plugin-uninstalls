-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('magni_pos_license_key', 'magni_pos_item_id', 'mp_deleted_last_log', 'mp_deleted_last_log_da', 'woocommerce_manage_stock', 'woocommerce_store_state', 'wps_wpr_settings_gallery', 'woocommerce_prices_include_tax', 'wc_attribute_taxonomies');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('total_billing_length', 'balance_due_date', 'balance_total_due', 'purchase_price', 'last_update', 'mp_order_total_purchase', 'gstin_number', '_order_stock_increased', '_product_attributes', 'mp_firebase_token', 'jwt_auth_device', 'jwt_auth_pass');
DELETE FROM wp_usermeta WHERE meta_key IN ('total_billing_length', 'balance_due_date', 'balance_total_due', 'purchase_price', 'last_update', 'mp_order_total_purchase', 'gstin_number', '_order_stock_increased', '_product_attributes', 'mp_firebase_token', 'jwt_auth_device', 'jwt_auth_pass');
DELETE FROM wp_termmeta WHERE meta_key IN ('total_billing_length', 'balance_due_date', 'balance_total_due', 'purchase_price', 'last_update', 'mp_order_total_purchase', 'gstin_number', '_order_stock_increased', '_product_attributes', 'mp_firebase_token', 'jwt_auth_device', 'jwt_auth_pass');
DELETE FROM wp_commentmeta WHERE meta_key IN ('total_billing_length', 'balance_due_date', 'balance_total_due', 'purchase_price', 'last_update', 'mp_order_total_purchase', 'gstin_number', '_order_stock_increased', '_product_attributes', 'mp_firebase_token', 'jwt_auth_device', 'jwt_auth_pass');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'order_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'order_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'order_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'order_%';

