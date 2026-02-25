-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocs_version', 'woocs_alert', 'woocs_auto_switcher_skin', 'woocs_auto_switcher_side', 'woocs_auto_switcher_top_margin', 'woocs_auto_switcher_color', 'woocs_auto_switcher_hover_color', 'woocs_auto_switcher_basic_field', 'woocs_auto_switcher_additional_field', 'woocs_restrike_on_checkout_page', 'woocs_auto_switcher_mobile_show', 'woocs_auto_switcher_show_page', 'woocs_auto_switcher_hide_page', 'woocommerce_tax_display_shop', 'woocs_sd', 'woocs_sd_max', 'woocs_collect_statistic', 'woocs_storage_server', 'woocs_storage_port', 'woocs_storage', 'woocs_shop_is_cached', 'woocs_shop_is_cached_preloader', 'woocs_woo_version', 'woocs_is_geoip_manipulation', 'woocs_is_multiple_allowed', 'woocs_is_fixed_enabled', 'woocs_is_fixed_coupon', 'woocs_is_fixed_shipping', 'woocs_is_fixed_user_role', 'woocs_force_pay_bygeoip_rules', 'woocs_currencies_rate_auto_update', 'woocs_first_activation', 'woocs_drop_down_view', 'woocs_currencies_aggregator', 'woocs_aggregator_key', 'woocs_welcome_currency', 'woocs_show_top_button', 'woocs_activate_page_list', 'woocs_activate_page_list_reverse', 'woocs_show_flags', 'woocs_special_ajax_mode', 'woocs_show_money_signs', 'woocs_customer_signs', 'woocs_customer_price_format', 'woocs_rate_auto_update_email', 'woocs_geo_rules', 'woocs_payments_rule_enabled', 'woocs_payment_control', 'woocs_payments_rules', 'woocs_disable_reset_currency_bots');
DELETE FROM wp_options WHERE option_name IN ('woocs_schema_in_current_currency', 'woocs_hide_cents', 'woocs_hide_on_front', 'woocs_rate_plus', 'woocs_decimals', 'woocs_separators', 'woocs_price_info', 'woocs_no_cents', 'woocs_show_approximate_amount', 'woocs_show_approximate_price', 'woocs_is_auto_switcher', 'woocs', 'woocs_auto_switcher_roll_px', 'woocommerce_currency', 'woocommerce_checkout_page_id', 'woocs_alert_notice', 'woocs_manage_rate_alert', 'woocommerce_price_thousand_sep');
DELETE FROM wp_options WHERE option_name LIKE 'woocs_sd_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_order_currency', '_woocs_price_geo_countries', '_woocs_regular_price_geo', '_woocs_sale_price_geo', '_woocs_price_user_role_name', '_woocs_regular_price_user_role', '_woocs_sale_price_user_role', '_woocs_order_rate', '_order_total', '_order_shipping', '_order_tax', '_order_shipping_tax', '_woocs_order_base_currency', '_woocs_order_currency_changed_mannualy', '_regular_price', '_sale_price', '_woocs_order_currency', '_refund_amount', '_cart_discount_tax', '_cart_discount');
DELETE FROM wp_usermeta WHERE meta_key IN ('_order_currency', '_woocs_price_geo_countries', '_woocs_regular_price_geo', '_woocs_sale_price_geo', '_woocs_price_user_role_name', '_woocs_regular_price_user_role', '_woocs_sale_price_user_role', '_woocs_order_rate', '_order_total', '_order_shipping', '_order_tax', '_order_shipping_tax', '_woocs_order_base_currency', '_woocs_order_currency_changed_mannualy', '_regular_price', '_sale_price', '_woocs_order_currency', '_refund_amount', '_cart_discount_tax', '_cart_discount');
DELETE FROM wp_termmeta WHERE meta_key IN ('_order_currency', '_woocs_price_geo_countries', '_woocs_regular_price_geo', '_woocs_sale_price_geo', '_woocs_price_user_role_name', '_woocs_regular_price_user_role', '_woocs_sale_price_user_role', '_woocs_order_rate', '_order_total', '_order_shipping', '_order_tax', '_order_shipping_tax', '_woocs_order_base_currency', '_woocs_order_currency_changed_mannualy', '_regular_price', '_sale_price', '_woocs_order_currency', '_refund_amount', '_cart_discount_tax', '_cart_discount');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_order_currency', '_woocs_price_geo_countries', '_woocs_regular_price_geo', '_woocs_sale_price_geo', '_woocs_price_user_role_name', '_woocs_regular_price_user_role', '_woocs_sale_price_user_role', '_woocs_order_rate', '_order_total', '_order_shipping', '_order_tax', '_order_shipping_tax', '_woocs_order_base_currency', '_woocs_order_currency_changed_mannualy', '_regular_price', '_sale_price', '_woocs_order_currency', '_refund_amount', '_cart_discount_tax', '_cart_discount');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocs_amount_coupon_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocs_amount_coupon_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocs_amount_coupon_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocs_amount_coupon_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocs_min_spend_coupon_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocs_min_spend_coupon_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocs_min_spend_coupon_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocs_min_spend_coupon_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocs_max_spend_coupon_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocs_max_spend_coupon_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocs_max_spend_coupon_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocs_max_spend_coupon_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocs_regular_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocs_regular_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocs_regular_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocs_regular_price_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_woocs_sale_price_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_woocs_sale_price_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_woocs_sale_price_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_woocs_sale_price_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '%_price_user_role';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%_price_user_role';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%_price_user_role';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_price_user_role';

