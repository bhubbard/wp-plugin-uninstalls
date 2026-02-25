-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('order_splitter_exclude_shipping_fee', 'order_splitter_disable_split_order_email', 'order_splitter_status_allowed', 'order_splitter_shop_manager_permission', 'order_splitter_order_label', 'wc_order_cancellation_return_premium_license_status', 'yoohw_settings_disable_menu', 'woocommerce_new_order_recipient', 'woocommerce_default_country', 'wc_order_splitter_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('edit_shop_order_per_page', 'wcos_order_splitter_settings_notice', 'wc_order_splitter_activation_time', 'wc_order_splitter_never_show_again', 'wc_advanced_order_actions_premium_ads_time', 'yoads_orders_splitter_to_pre_orders');
DELETE FROM wp_usermeta WHERE meta_key IN ('edit_shop_order_per_page', 'wcos_order_splitter_settings_notice', 'wc_order_splitter_activation_time', 'wc_order_splitter_never_show_again', 'wc_advanced_order_actions_premium_ads_time', 'yoads_orders_splitter_to_pre_orders');
DELETE FROM wp_termmeta WHERE meta_key IN ('edit_shop_order_per_page', 'wcos_order_splitter_settings_notice', 'wc_order_splitter_activation_time', 'wc_order_splitter_never_show_again', 'wc_advanced_order_actions_premium_ads_time', 'yoads_orders_splitter_to_pre_orders');
DELETE FROM wp_commentmeta WHERE meta_key IN ('edit_shop_order_per_page', 'wcos_order_splitter_settings_notice', 'wc_order_splitter_activation_time', 'wc_order_splitter_never_show_again', 'wc_advanced_order_actions_premium_ads_time', 'yoads_orders_splitter_to_pre_orders');

