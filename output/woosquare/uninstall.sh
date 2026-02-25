#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_access_token%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'activate_modules_woosquare_plus%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_access_token_cauth%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_location_id%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_auth_response%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woosquare_plus_reauth_notification%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_refresh_token%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_update_msg_dissmiss%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_auth_notice%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_locations%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_business_name%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_location_id_free%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_locations_free%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_business_name_free%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'woocommerce_currency'
wp option delete 'woo_square_account_currency_code'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_square_gift_card_pay_enabled%'"
wp option delete 'woocommerce_square_payment_reporting'
wp option delete 'squ_woo_order_sync'
wp option delete 'sync_square_order_notify'
wp option delete 'woo_square_order_pickup_at'
wp option delete 'woo_square_application_id_for_callback'
wp option delete 'woo_square_access_token_for_callback'
wp option delete 'woo_square_location_id_for_callback'
wp option delete 'cust_add_myaccount'
wp option delete 'selected_order_info'
wp option delete 'woosquare_alerts_enabled'
wp option delete 'woosquare_alert_email'
wp option delete 'woo_square_running_sync'
wp option delete 'woo_square_running_sync_time'
wp option delete 'woosquare_square_to_woo'
wp option delete 'woo_square_listsaved_categoryChecked'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_listsaved_products_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_listsaved_categories_%'"
wp option delete 'disable_auto_delete'
wp option delete 'woocommerce_square_settings'
wp option delete 'woo_square_auto_sync'
wp option delete 'woo_square_auto_sync_duration'
wp option delete 'woo_square_merging_option'
wp option delete 'woo_square_sync_preference'
wp option delete 'sync_on_add_edit'
wp option delete 'woosquare_pro_edit_fields'
wp option delete 'html_sync_des'
wp option delete 'enable_woosquare_new_variation_format'
wp option delete 'woosquare_stocksync_webhook'
wp option delete 'woo_square_customer_auto_sync'
wp option delete 'woo_square_customer_auto_sync_duration'
wp option delete 'woo_square_customer_merging_option'
wp option delete 'woo_square_customer_sync_square_order_sync'
wp option delete 'woo_square_create_customer_guest'
wp option delete 'sync_on_customer_add_edit'
wp option delete 'woo_square_account_type'
wp option delete 'wc_square_version'
wp option delete 'woo_square_app_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_remote_woosquare_get_error_message_%'"
wp option delete 'Woosquare_webhook_response'
wp option delete 'Woosquare_webhook_response_error'
wp option delete 'woo_square_listsaved_products_square'
wp option delete 'woo_square_listsaved_categories_square'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'category_square_id_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'category_square_version_%'"
wp option delete 'WOOSQUARE_VERSION'
wp option delete 'woocommerce_squareconnect_settings'
wp option delete 'WooSquare_polling'
wp option delete 'woo_square_listsaved_categories_wooco'
wp option delete 'woo_square_listsaved_products_wooco'
wp option delete 'woosquare_sale_price_custom_attr'
wp option delete 'enable_woosquare_gtin_field'
wp option delete 'v2_converted_cat'
wp option delete 'woosquare_module_updated_content1'
wp option delete 'woosquare_module_updated_content'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woo_square_auto_sync_%'"
wp option delete 'mycred_pref_buycreds'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woosquare_connection_logs%'"
wp option delete 'woo_square_plus_apple_pay_domain_registered_url'
wp option delete 'terminal_checkout_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings '"
wp option delete 'woo_square_plus_apple_pay_domain_registered'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gift_card_create_order%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cancel_payment_gf_card%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'square_gift_card_charge%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gift_card_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gift_card_response_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'square_payment_begin_time%'"
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete '_transient_timeout_transient_get_products'

# Delete Transients
wp transient delete 'is_sandbox'
wp transient delete 'woosquare_plus_notification'
wp transient delete 'getUnsynchronizedCategories'
wp transient delete 'getCategoriesSquareIds'
wp transient delete 'getUnsynchronizedProducts'
wp transient delete 'allwooproducts'
wp transient delete 'getProductsSquareIds'
wp transient delete 'square_items_cache'
wp transient delete 'square_itemsss'
wp transient delete 'woo_to_square_target_categories'
wp transient delete 'selected_sync_categories'
wp transient delete 'woo_product_delete_log'
wp transient delete 'woo_delete_product_log_id'
wp transient delete 'woo_product_sync_log_transient'
wp transient delete 'woo_product_sync_log_id_transient'
wp transient delete 'woo_product_delete_log_transient'
wp transient delete 'woo_delete_product_log_id_transient'
wp transient delete 'woo_to_square_target_products'
wp transient delete 'square_inventory'
wp transient delete 'woo_product_delete_log_id_transient'
wp transient delete 'square_product_sync_log_transient'
wp transient delete 'square_product_sync_log_id_transient'
wp transient delete 'square_product_delete_sync_log_transient'
wp transient delete 'square_product_delete_sync_log_id_transient'
wp transient delete 'wsm_modifier'
wp transient delete 'woo_to_square'
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'WooSquare_inventory'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%transient_getSquareItems' OR option_name LIKE '_site_transient_%transient_getSquareItems'"
wp transient delete 'woo_square_check_apple_pay_domain_registration'
wp transient delete 'square_order_sync_add_on_id'
wp transient delete 'squresettotal'
wp transient delete 'squwfocu_order_id'
wp transient delete 'square_fulfillments'
wp transient delete 'sq_gift_card_data'
wp transient delete 'woosquare_giftcard_fees'
wp transient delete 'squ_giftfee'
wp transient delete 'squ_giftfee_session'
wp transient delete 'squ_add_gift_box'
wp transient delete 'sq_payment_id_box'
wp transient delete 'add_gift_box'
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'
wp transient delete 'transient_get_products'

# Clear Cron Jobs
wp cron event delete 'woocommerce_flush_rewrite_rules'
wp cron event delete 'auto_sync_cron_job_hook'
wp cron event delete 'auto_sync_customer_cron_job_hook'
wp cron event delete 'WooSquare_save_post_event'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_modifier_group_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_modifier_group_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_modifier_group_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_modifier_group_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_square_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_square_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_square_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_square_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_meta_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_meta_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_meta_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_meta_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_meta_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_meta_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_meta_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_meta_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_meta_ordinal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_meta_ordinal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_meta_ordinal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_meta_ordinal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'term_meta_set_name_ordinal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'term_meta_set_name_ordinal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'term_meta_set_name_ordinal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'term_meta_set_name_ordinal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'variation_square_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'variation_square_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'variation_square_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'variation_square_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_refund_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'order_pa_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'order_pa_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'order_pa_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'order_pa_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_default_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_var_img_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_var_img_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_var_img_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_var_img_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_variation_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_variation_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_price_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_price_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_price_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_price_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_price_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_price_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_price_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_price_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_min_regular_price_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_min_regular_price_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_min_regular_price_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_min_regular_price_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_max_regular_price_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_max_regular_price_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_max_regular_price_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_max_regular_price_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_global_unique_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'track_inventory_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'track_inventory_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'track_inventory_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'track_inventory_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_termid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_termid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_termid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_termid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'square_master_img_id_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'square_master_img_id_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'square_master_img_id_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'square_master_img_id_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_master_img_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_master_img_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_master_img_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_master_img_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_master_img_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_master_img_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_master_img_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_master_img_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcsquare_disable_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcsquare_disable_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcsquare_disable_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcsquare_disable_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_sync_square_id%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_sync_square_id%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_sync_square_id%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_sync_square_id%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'admin_notice_square'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'admin_notice_square'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'admin_notice_square'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'admin_notice_square'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'log_woosquare_update_items_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'log_woosquare_update_items_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'log_woosquare_update_items_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'log_woosquare_update_items_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'log_woosquare_update_items_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'log_woosquare_update_items_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'log_woosquare_update_items_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'log_woosquare_update_items_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'log_woosquare_update_items_response_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'log_woosquare_update_items_response_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'log_woosquare_update_items_response_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'log_woosquare_update_items_response_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_square_attachment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_square_attachment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_square_attachment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_square_attachment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'square_gallery_img_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'square_gallery_img_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'square_gallery_img_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'square_gallery_img_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosquare_gtin_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosquare_gtin_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosquare_gtin_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosquare_gtin_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pre_orders_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pre_orders_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pre_orders_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pre_orders_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_pre_orders_when_to_charge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_pre_orders_when_to_charge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_pre_orders_when_to_charge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_pre_orders_when_to_charge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_square_charge_captured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_square_charge_captured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_square_charge_captured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_square_charge_captured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woos_plus_customer_card_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woos_plus_customer_card_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woos_plus_customer_card_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woos_plus_customer_card_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woos_plus_source_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woos_plus_source_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woos_plus_source_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woos_plus_source_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woos_plus_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woos_plus_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woos_plus_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woos_plus_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customers_card_create_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customers_card_create_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customers_card_create_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customers_card_create_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'customers_card_create_err'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'customers_card_create_err'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'customers_card_create_err'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'customers_card_create_err'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfocu_custom_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfocu_custom_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfocu_custom_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfocu_custom_page'"
