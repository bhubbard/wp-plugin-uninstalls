-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_order_splitter_premium_license_status', 'yoohw_settings_disable_menu', 'woocommerce_new_order_recipient', 'woocommerce_default_country', 'wc_pre_orders_version', 'yoess_pre_order_email_to_admin', 'yoess_pre_order_email_to_admin_timer', 'yoess_pre_order_customer_actions', 'yoess_pre_order_auto_split_order', 'automation_splitter_delay_timer', 'order_splitter_notifications_email_sending_mode', 'yoess_pre_order_button_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pre_order_available_date', '_pre_order_items', 'edit_shop_order_per_page', 'wcpo_pre_orders_settings_notice', 'wc_pre_orders_activation_time', 'wc_pre_orders_never_show_again', 'wc_pre_orders_premium_ads_time', '_extended_status_available_date', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pre_order_available_date', '_pre_order_items', 'edit_shop_order_per_page', 'wcpo_pre_orders_settings_notice', 'wc_pre_orders_activation_time', 'wc_pre_orders_never_show_again', 'wc_pre_orders_premium_ads_time', '_extended_status_available_date', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pre_order_available_date', '_pre_order_items', 'edit_shop_order_per_page', 'wcpo_pre_orders_settings_notice', 'wc_pre_orders_activation_time', 'wc_pre_orders_never_show_again', 'wc_pre_orders_premium_ads_time', '_extended_status_available_date', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pre_order_available_date', '_pre_order_items', 'edit_shop_order_per_page', 'wcpo_pre_orders_settings_notice', 'wc_pre_orders_activation_time', 'wc_pre_orders_never_show_again', 'wc_pre_orders_premium_ads_time', '_extended_status_available_date', '_stock_status');

