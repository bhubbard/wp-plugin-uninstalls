-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('via_woocommerce_classement_settings', 'woocommerce_weight_unit', 'via_woocommerce_classement_Statistics_start_year', 'online_status');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('user_count_connections', '_customer_ip_address', 'total_sales', 'billing_phone', 'current_login', 'last_login', 'woocl268_notice');
DELETE FROM wp_usermeta WHERE meta_key IN ('user_count_connections', '_customer_ip_address', 'total_sales', 'billing_phone', 'current_login', 'last_login', 'woocl268_notice');
DELETE FROM wp_termmeta WHERE meta_key IN ('user_count_connections', '_customer_ip_address', 'total_sales', 'billing_phone', 'current_login', 'last_login', 'woocl268_notice');
DELETE FROM wp_commentmeta WHERE meta_key IN ('user_count_connections', '_customer_ip_address', 'total_sales', 'billing_phone', 'current_login', 'last_login', 'woocl268_notice');

