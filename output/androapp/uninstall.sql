-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pw-mobile-app', 'pwapp_db_version', 'androapp_account_settings', 'androapp_scripts_detected', 'pw-mobile-build-options', 'androapp_ads', 'androapp_post_content_tab', 'cron', 'pw-mobile-app-language', 'woocommerce_permalinks', 'woocommerce_dimension_unit');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'menu-icons', 'total_sales', 'first_name', 'last_name', '_payment_method', '_payment_method_title', '_order_currency', '_order_number');
DELETE FROM wp_usermeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'menu-icons', 'total_sales', 'first_name', 'last_name', '_payment_method', '_payment_method_title', '_order_currency', '_order_number');
DELETE FROM wp_termmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'menu-icons', 'total_sales', 'first_name', 'last_name', '_payment_method', '_payment_method_title', '_order_currency', '_order_number');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_yoast_wpseo_metadesc', 'menu-icons', 'total_sales', 'first_name', 'last_name', '_payment_method', '_payment_method_title', '_order_currency', '_order_number');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'shipping_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'shipping_%';

