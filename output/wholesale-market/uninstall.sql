-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ced_cwsm_latest_csv_header', 'ced_cwsm_wholesaleRolesArray', 'ced_cwsm_enable_minCheckoutPrice', 'ced_cwsm_minCheckoutPrice', 'ced_cwsm_minCheckoutPrice_failure_txt', 'ced_cwsm_wholesale_tax_exclude', 'ced_wura_notification', 'ced_cwsm_enable_minQty', 'ced_cwsm_request_role_addon_directly', 'ced_cwsm_request_role_myaccount_page', 'ced_cwsm_basic_settings_payment_enable', 'ced_cwsm_request_role_addon_functionality', 'ced_cwsm_radio_minQty_picker', 'ced_cwsm_central_min_qty', 'ced_cwsm_radio_whoCanSee', 'ced_cwsm_enable_wholesale_market');
DELETE FROM wp_options WHERE option_name LIKE 'ced_cwsm_wholesale_tax_exclude_%';
DELETE FROM wp_options WHERE option_name LIKE '%enable_minQty';
DELETE FROM wp_options WHERE option_name LIKE '%_enable';
DELETE FROM wp_options WHERE option_name LIKE '%show_in_price_column';
DELETE FROM wp_options WHERE option_name LIKE '%wsp_applied_failure_txt';
DELETE FROM wp_options WHERE option_name LIKE '%wsp_applied_success_txt';
DELETE FROM wp_options WHERE option_name LIKE '%default_wsp_applied_txt';
DELETE FROM wp_options WHERE option_name LIKE '%custm_shop_txt';
DELETE FROM wp_options WHERE option_name LIKE '%default_wm_price_txt';
DELETE FROM wp_options WHERE option_name LIKE '%radio_minQty_picker';
DELETE FROM wp_options WHERE option_name LIKE '%central_min_qty';
DELETE FROM wp_options WHERE option_name LIKE '%custm_product_txt';
DELETE FROM wp_options WHERE option_name LIKE '%enable_wholesale_market';
DELETE FROM wp_options WHERE option_name LIKE '%radio_whoCanSee';
DELETE FROM wp_options WHERE option_name LIKE '%keep_plugin_setting';
DELETE FROM wp_options WHERE option_name LIKE '%keep_products_meta_fields';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', 'ced_cwsm_wholesale_price', 'ced_cwsm_min_qty_to_buy', 'ced_wholesale_order', 'ced_wholesale_request', 'ced_cwsm_user_role_package', 'ced_wholesale_request_month_period', 'ced_wholesale_request_day_period', 'ced_wholesale_request_price', 'ced_cwsm_payement_status', 'ced_direct_role_request');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', 'ced_cwsm_wholesale_price', 'ced_cwsm_min_qty_to_buy', 'ced_wholesale_order', 'ced_wholesale_request', 'ced_cwsm_user_role_package', 'ced_wholesale_request_month_period', 'ced_wholesale_request_day_period', 'ced_wholesale_request_price', 'ced_cwsm_payement_status', 'ced_direct_role_request');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', 'ced_cwsm_wholesale_price', 'ced_cwsm_min_qty_to_buy', 'ced_wholesale_order', 'ced_wholesale_request', 'ced_cwsm_user_role_package', 'ced_wholesale_request_month_period', 'ced_wholesale_request_day_period', 'ced_wholesale_request_price', 'ced_cwsm_payement_status', 'ced_direct_role_request');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', '_regular_price', '_sale_price', 'ced_cwsm_wholesale_price', 'ced_cwsm_min_qty_to_buy', 'ced_wholesale_order', 'ced_wholesale_request', 'ced_cwsm_user_role_package', 'ced_wholesale_request_month_period', 'ced_wholesale_request_day_period', 'ced_wholesale_request_price', 'ced_cwsm_payement_status', 'ced_direct_role_request');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ced_cwsm_min_qty_to_buy%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ced_cwsm_min_qty_to_buy%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ced_cwsm_min_qty_to_buy%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ced_cwsm_min_qty_to_buy%';

