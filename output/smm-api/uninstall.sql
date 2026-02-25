-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smm_api_server_item', 'smmpage_item', 'woocommerce_meta_box_errors', 'smapi_allow_customer_cancel_subscription', 'smmapi_manual', 'smapi_server_name_option', 'smapi_enabled', 'smmapi_enabled', 'smmapi_minmax', 'smmapi_sudolor', 'smmqty_attribute', 'smm_cron', 'smapi_cron_job', 'smapi_price_update', 'active_cron_servers', 'smapi_trash_pending_subscriptions', 'smapi_trash_cancelled_subscriptions', 'smmreg_price', 'smmsale_price', 'woocommerce_price_num_decimals', 'smmapi_duporder', 'smapi_erasure_request', 'smm_api_setting', 'woocommerce_paypal_settings', 'smapi_suspend_for_failed_recurring_payment', 'smm_font_awesome_list', 'smm_dashicons_list', 'smm_plugin_fw_panel_wc_default_options_set', 'smm_recently_activated', 'smms_system_info');
DELETE FROM wp_options WHERE option_name LIKE '%_width';
DELETE FROM wp_options WHERE option_name LIKE '%_height';
DELETE FROM wp_options WHERE option_name LIKE '%_options';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_smapi_service_id_option', 'var_smapi_service_id_option', 'var_smapi_server_name_option', '_parameter_handle', '_api_server_request', 'variable_smm_api', 'var_smm_customer_input_field_label', 'locate_input_box', 'smapi_server_name_option', 'smapi_service_id_option', 'smapi_service_qty_max', 'smapi_service_qty_min', 'var_id_sel', 'MY_TRIGGER_ORDER', 'API_ORDER_DATA', 'API_ORDER_QTY', 'API_URL', 'API_KEY', 'API_STAT', 'API_ID', '_paypal_transaction_ids', 'start_date', 'payment_type', '_retry_at', 'subscriptions', '_rewrite', '_label_singular', '_label_plural', '_taxonomy', '_taxonomy_rewrite', '_post_type', 'dismissed_wp_pointers', 'blog-cats', 'Response');
DELETE FROM wp_usermeta WHERE meta_key IN ('_smapi_service_id_option', 'var_smapi_service_id_option', 'var_smapi_server_name_option', '_parameter_handle', '_api_server_request', 'variable_smm_api', 'var_smm_customer_input_field_label', 'locate_input_box', 'smapi_server_name_option', 'smapi_service_id_option', 'smapi_service_qty_max', 'smapi_service_qty_min', 'var_id_sel', 'MY_TRIGGER_ORDER', 'API_ORDER_DATA', 'API_ORDER_QTY', 'API_URL', 'API_KEY', 'API_STAT', 'API_ID', '_paypal_transaction_ids', 'start_date', 'payment_type', '_retry_at', 'subscriptions', '_rewrite', '_label_singular', '_label_plural', '_taxonomy', '_taxonomy_rewrite', '_post_type', 'dismissed_wp_pointers', 'blog-cats', 'Response');
DELETE FROM wp_termmeta WHERE meta_key IN ('_smapi_service_id_option', 'var_smapi_service_id_option', 'var_smapi_server_name_option', '_parameter_handle', '_api_server_request', 'variable_smm_api', 'var_smm_customer_input_field_label', 'locate_input_box', 'smapi_server_name_option', 'smapi_service_id_option', 'smapi_service_qty_max', 'smapi_service_qty_min', 'var_id_sel', 'MY_TRIGGER_ORDER', 'API_ORDER_DATA', 'API_ORDER_QTY', 'API_URL', 'API_KEY', 'API_STAT', 'API_ID', '_paypal_transaction_ids', 'start_date', 'payment_type', '_retry_at', 'subscriptions', '_rewrite', '_label_singular', '_label_plural', '_taxonomy', '_taxonomy_rewrite', '_post_type', 'dismissed_wp_pointers', 'blog-cats', 'Response');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_smapi_service_id_option', 'var_smapi_service_id_option', 'var_smapi_server_name_option', '_parameter_handle', '_api_server_request', 'variable_smm_api', 'var_smm_customer_input_field_label', 'locate_input_box', 'smapi_server_name_option', 'smapi_service_id_option', 'smapi_service_qty_max', 'smapi_service_qty_min', 'var_id_sel', 'MY_TRIGGER_ORDER', 'API_ORDER_DATA', 'API_ORDER_QTY', 'API_URL', 'API_KEY', 'API_STAT', 'API_ID', '_paypal_transaction_ids', 'start_date', 'payment_type', '_retry_at', 'subscriptions', '_rewrite', '_label_singular', '_label_plural', '_taxonomy', '_taxonomy_rewrite', '_post_type', 'dismissed_wp_pointers', 'blog-cats', 'Response');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'smapi_trial_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'smapi_trial_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'smapi_trial_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smapi_trial_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'smapi_downgrade_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'smapi_downgrade_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'smapi_downgrade_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smapi_downgrade_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'smapi_upgrade_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'smapi_upgrade_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'smapi_upgrade_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smapi_upgrade_%';

