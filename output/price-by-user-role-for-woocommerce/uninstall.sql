-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_version', 'active_sitewide_plugins', 'alg_wc_price_by_user_role_enabled', 'alg_wc_price_by_user_role_for_bots_disabled', 'alg_wc_price_by_user_role_shipping_enabled', 'alg_wc_price_by_user_role_per_product_enabled', 'alg_wc_price_by_user_role_multipliers_enabled', 'woocommerce_prices_include_tax', 'alg_wc_price_by_user_role_per_product_show_roles', 'alg_wc_price_by_user_role_guest', 'alg_wc_price_by_user_role_empty_price_guest', 'alg_wc_price_by_user_role_administrator', 'alg_wc_price_by_user_role_empty_price_administrator', 'alg_wc_price_by_user_role_editor', 'alg_wc_price_by_user_role_empty_price_editor', 'alg_wc_price_by_user_role_author', 'alg_wc_price_by_user_role_empty_price_author', 'alg_wc_price_by_user_role_contributor', 'alg_wc_price_by_user_role_empty_price_contributor', 'alg_wc_price_by_user_role_subscriber', 'alg_wc_price_by_user_role_empty_price_subscriber', 'alg_wc_price_by_user_role_shop_manager', 'alg_wc_price_by_user_role_seller', 'alg_wc_price_by_user_role_vendor_staff', 'ts_tracker_last_send', 'woocommerce_store_city', 'woocommerce_default_country', 'alg_wc_price_by_user_role_reset_usage_tracking', 'pbur_lite_allow_tracking', 'alg_wc_price_by_user_role_version');
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_price_by_user_role_%';
DELETE FROM wp_options WHERE option_name LIKE 'alg_wc_price_by_user_role_empty_price_%';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('alg_wc_price_by_user_role_order_role', 'alg_wc_price_by_user_role_order_page_checkbox', '_price', '_alg_wc_price_by_user_role_per_product_settings_enabled');
DELETE FROM wp_usermeta WHERE meta_key IN ('alg_wc_price_by_user_role_order_role', 'alg_wc_price_by_user_role_order_page_checkbox', '_price', '_alg_wc_price_by_user_role_per_product_settings_enabled');
DELETE FROM wp_termmeta WHERE meta_key IN ('alg_wc_price_by_user_role_order_role', 'alg_wc_price_by_user_role_order_page_checkbox', '_price', '_alg_wc_price_by_user_role_per_product_settings_enabled');
DELETE FROM wp_commentmeta WHERE meta_key IN ('alg_wc_price_by_user_role_order_role', 'alg_wc_price_by_user_role_order_page_checkbox', '_price', '_alg_wc_price_by_user_role_per_product_settings_enabled');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_empty_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_empty_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_empty_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_empty_price_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_regular_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_regular_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_regular_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_regular_price_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_sale_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_sale_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_sale_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_alg_wc_price_by_user_role_sale_price_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

