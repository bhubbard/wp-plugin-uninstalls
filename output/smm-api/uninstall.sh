#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smm_api_server_item'
wp option delete 'smmpage_item'
wp option delete 'woocommerce_meta_box_errors'
wp option delete 'smapi_allow_customer_cancel_subscription'
wp option delete 'smmapi_manual'
wp option delete 'smapi_server_name_option'
wp option delete 'smapi_enabled'
wp option delete 'smmapi_enabled'
wp option delete 'smmapi_minmax'
wp option delete 'smmapi_sudolor'
wp option delete 'smmqty_attribute'
wp option delete 'smm_cron'
wp option delete 'smapi_cron_job'
wp option delete 'smapi_price_update'
wp option delete 'active_cron_servers'
wp option delete 'smapi_trash_pending_subscriptions'
wp option delete 'smapi_trash_cancelled_subscriptions'
wp option delete 'smmreg_price'
wp option delete 'smmsale_price'
wp option delete 'woocommerce_price_num_decimals'
wp option delete 'smmapi_duporder'
wp option delete 'smapi_erasure_request'
wp option delete 'smm_api_setting'
wp option delete 'woocommerce_paypal_settings'
wp option delete 'smapi_suspend_for_failed_recurring_payment'
wp option delete 'smm_font_awesome_list'
wp option delete 'smm_dashicons_list'
wp option delete 'smm_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'smm_recently_activated'
wp option delete 'smms_system_info'

# Clear Cron Jobs
wp cron event delete 'smm_auto_price'
wp cron event delete 'smapi_renew_orders'
wp cron event delete 'smapi_trash_cancelled_subscriptions'
wp cron event delete 'smapi_trash_pending_subscriptions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smapi_service_id_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smapi_service_id_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smapi_service_id_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smapi_service_id_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'var_smapi_service_id_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'var_smapi_service_id_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'var_smapi_service_id_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'var_smapi_service_id_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'var_smapi_server_name_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'var_smapi_server_name_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'var_smapi_server_name_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'var_smapi_server_name_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parameter_handle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parameter_handle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parameter_handle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parameter_handle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_api_server_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_api_server_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_api_server_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_api_server_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variable_smm_api'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variable_smm_api'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variable_smm_api'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variable_smm_api'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'var_smm_customer_input_field_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'var_smm_customer_input_field_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'var_smm_customer_input_field_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'var_smm_customer_input_field_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locate_input_box'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locate_input_box'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locate_input_box'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locate_input_box'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smapi_server_name_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smapi_server_name_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smapi_server_name_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smapi_server_name_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smapi_service_id_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smapi_service_id_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smapi_service_id_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smapi_service_id_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smapi_service_qty_max'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smapi_service_qty_max'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smapi_service_qty_max'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smapi_service_qty_max'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smapi_service_qty_min'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smapi_service_qty_min'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smapi_service_qty_min'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smapi_service_qty_min'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'var_id_sel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'var_id_sel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'var_id_sel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'var_id_sel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'smapi_trial_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'smapi_trial_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'smapi_trial_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smapi_trial_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'smapi_downgrade_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'smapi_downgrade_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'smapi_downgrade_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smapi_downgrade_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'smapi_upgrade_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'smapi_upgrade_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'smapi_upgrade_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smapi_upgrade_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'MY_TRIGGER_ORDER'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'MY_TRIGGER_ORDER'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'MY_TRIGGER_ORDER'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'MY_TRIGGER_ORDER'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'API_ORDER_DATA'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'API_ORDER_DATA'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'API_ORDER_DATA'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'API_ORDER_DATA'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'API_ORDER_QTY'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'API_ORDER_QTY'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'API_ORDER_QTY'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'API_ORDER_QTY'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'API_URL'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'API_URL'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'API_URL'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'API_URL'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'API_KEY'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'API_KEY'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'API_KEY'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'API_KEY'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'API_STAT'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'API_STAT'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'API_STAT'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'API_STAT'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'API_ID'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'API_ID'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'API_ID'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'API_ID'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_paypal_transaction_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_retry_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_retry_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_retry_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_retry_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'subscriptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'subscriptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'subscriptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'subscriptions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rewrite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rewrite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rewrite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rewrite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_label_singular'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_label_singular'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_label_singular'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_label_singular'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_label_plural'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_label_plural'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_label_plural'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_label_plural'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxonomy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxonomy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxonomy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxonomy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_taxonomy_rewrite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_taxonomy_rewrite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_taxonomy_rewrite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_taxonomy_rewrite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Response'"
