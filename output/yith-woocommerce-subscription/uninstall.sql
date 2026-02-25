-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ywsbs_enable_shop_manager', 'ywsbs_place_order_label', 'ywsbs_add_to_cart_label', 'ywsbs_sync_first_payment', 'ywsbs_total_subscription_length_text', 'woocommerce_tax_display_shop', 'ywsbs_enable_manual_renews', 'woocommerce_tax_display_cart', 'ywsbs_trash_pending_subscriptions', 'ywsbs_trash_cancelled_subscriptions', 'woocommerce_prices_include_tax', 'ywsbs_subscription_action_style', 'ywsbs_text_cancel_subscription_dropdown', 'ywsbs_text_cancel_subscription_modal', 'ywsbs_text_cancel_subscription_button', 'ywsbs_text_close_modal', 'ywsbs_delete_subscription_order_cancelled', 'woocommerce_price_num_decimals', 'ywsbs_disable_the_reduction_of_order_stock_in_renew', 'ywsbs_erasure_request', 'ywsbs_allow_customer_cancel_subscription', 'ywsbs_delete_personal_info', 'ywsbs_enable_log', 'woocommerce_paypal_settings', 'ywsbs_suspend_for_failed_recurring_payment', 'woocommerce_ppcp-gateway_settings', 'ywsbs_pp_force_disabled_sources', 'yit_font_awesome_list', 'yit_dashicons_list', 'yit_plugin_fw_panel_wc_default_options_set', 'yit_recently_activated', 'yith_system_info', 'yith-plugin-fw-latest-hc-articles', 'yith-plugin-fw-system-status-tls-version', 'yith-plugin-fw-system-status-output-ip', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_subscription_status_style';
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';
DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ywsbs_subscription_ids', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_usermeta WHERE meta_key IN ('ywsbs_subscription_ids', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_termmeta WHERE meta_key IN ('ywsbs_subscription_ids', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ywsbs_subscription_ids', 'dismissed_wp_pointers', 'blog-cats');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ywsbs_upgrade_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ywsbs_upgrade_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ywsbs_upgrade_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ywsbs_upgrade_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ywsbs_trial_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ywsbs_trial_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ywsbs_trial_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ywsbs_trial_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';

