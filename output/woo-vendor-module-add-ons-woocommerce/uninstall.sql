-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plugin_key_actions', 'woovendors_pages', 'woovendor_tab_general', 'woocommerce_myaccount_page_id', 'woocommerce_enable_myaccount_registration');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_country', '_billing_postcode', '_billing_email', '_billing_phone', 'total_sales', '_order_total', '_order_key', '_price', 'woo_order_vendor_id', 'woo_order_total_vendor_products', 'vendor_account', 'wp_capabilities');
DELETE FROM wp_usermeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_country', '_billing_postcode', '_billing_email', '_billing_phone', 'total_sales', '_order_total', '_order_key', '_price', 'woo_order_vendor_id', 'woo_order_total_vendor_products', 'vendor_account', 'wp_capabilities');
DELETE FROM wp_termmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_country', '_billing_postcode', '_billing_email', '_billing_phone', 'total_sales', '_order_total', '_order_key', '_price', 'woo_order_vendor_id', 'woo_order_total_vendor_products', 'vendor_account', 'wp_capabilities');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_billing_first_name', '_billing_last_name', '_billing_address_1', '_billing_address_2', '_billing_city', '_billing_state', '_billing_country', '_billing_postcode', '_billing_email', '_billing_phone', 'total_sales', '_order_total', '_order_key', '_price', 'woo_order_vendor_id', 'woo_order_total_vendor_products', 'vendor_account', 'wp_capabilities');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'woo_order_vendor_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'woo_order_vendor_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'woo_order_vendor_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woo_order_vendor_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'woo_order_commision_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'woo_order_commision_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'woo_order_commision_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woo_order_commision_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'woo_commision_status_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'woo_commision_status_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'woo_commision_status_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woo_commision_status_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'woo_commision_date_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'woo_commision_date_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'woo_commision_date_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woo_commision_date_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'woo_order_product_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'woo_order_product_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'woo_order_product_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woo_order_product_price_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'woo_order_product_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'woo_order_product_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'woo_order_product_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'woo_order_product_id_%';

