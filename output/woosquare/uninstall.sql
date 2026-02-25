-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_currency', 'woo_square_account_currency_code', 'woocommerce_square_payment_reporting', 'squ_woo_order_sync', 'sync_square_order_notify', 'woo_square_order_pickup_at', 'woo_square_application_id_for_callback', 'woo_square_access_token_for_callback', 'woo_square_location_id_for_callback', 'cust_add_myaccount', 'selected_order_info', 'woosquare_alerts_enabled', 'woosquare_alert_email', 'woo_square_running_sync', 'woo_square_running_sync_time', 'woosquare_square_to_woo', 'woo_square_listsaved_categoryChecked', 'disable_auto_delete', 'woocommerce_square_settings', 'woo_square_auto_sync', 'woo_square_auto_sync_duration', 'woo_square_merging_option', 'woo_square_sync_preference', 'sync_on_add_edit', 'woosquare_pro_edit_fields', 'html_sync_des', 'enable_woosquare_new_variation_format', 'woosquare_stocksync_webhook', 'woo_square_customer_auto_sync', 'woo_square_customer_auto_sync_duration', 'woo_square_customer_merging_option', 'woo_square_customer_sync_square_order_sync', 'woo_square_create_customer_guest', 'sync_on_customer_add_edit', 'woo_square_account_type', 'wc_square_version', 'woo_square_app_id', 'Woosquare_webhook_response', 'Woosquare_webhook_response_error', 'woo_square_listsaved_products_square', 'woo_square_listsaved_categories_square', 'WOOSQUARE_VERSION', 'woocommerce_squareconnect_settings', 'WooSquare_polling', 'woo_square_listsaved_categories_wooco', 'woo_square_listsaved_products_wooco', 'woosquare_sale_price_custom_attr', 'enable_woosquare_gtin_field', 'v2_converted_cat', 'woosquare_module_updated_content1');
DELETE FROM wp_options WHERE option_name IN ('woosquare_module_updated_content', 'mycred_pref_buycreds', 'woo_square_plus_apple_pay_domain_registered_url', 'terminal_checkout_id', 'woo_square_plus_apple_pay_domain_registered', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', '_transient_timeout_transient_get_products', 'is_sandbox', 'woosquare_plus_notification', 'getUnsynchronizedCategories', 'getCategoriesSquareIds', 'getUnsynchronizedProducts', 'allwooproducts', 'getProductsSquareIds', 'square_items_cache', 'square_itemsss', 'woo_to_square_target_categories', 'selected_sync_categories', 'woo_product_delete_log', 'woo_delete_product_log_id', 'woo_product_sync_log_transient', 'woo_product_sync_log_id_transient', 'woo_product_delete_log_transient', 'woo_delete_product_log_id_transient', 'woo_to_square_target_products', 'square_inventory', 'woo_product_delete_log_id_transient', 'square_product_sync_log_transient', 'square_product_sync_log_id_transient', 'square_product_delete_sync_log_transient', 'square_product_delete_sync_log_id_transient', 'wsm_modifier', 'woo_to_square', 'wc_attribute_taxonomies', 'WooSquare_inventory', 'woo_square_check_apple_pay_domain_registration', 'square_order_sync_add_on_id', 'squresettotal', 'squwfocu_order_id', 'square_fulfillments', 'sq_gift_card_data', 'woosquare_giftcard_fees', 'squ_giftfee', 'squ_giftfee_session', 'squ_add_gift_box');
DELETE FROM wp_options WHERE option_name IN ('sq_payment_id_box', 'add_gift_box', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes', 'transient_get_products');
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_access_token%';
DELETE FROM wp_options WHERE option_name LIKE 'activate_modules_woosquare_plus%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_access_token_cauth%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_location_id%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_auth_response%';
DELETE FROM wp_options WHERE option_name LIKE 'woosquare_plus_reauth_notification%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_refresh_token%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_update_msg_dissmiss%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_auth_notice%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_locations%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_business_name%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_location_id_free%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_locations_free%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_business_name_free%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings';
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_square_gift_card_pay_enabled%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_listsaved_products_%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_listsaved_categories_%';
DELETE FROM wp_options WHERE option_name LIKE 'wp_remote_woosquare_get_error_message_%';
DELETE FROM wp_options WHERE option_name LIKE 'category_square_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'category_square_version_%';
DELETE FROM wp_options WHERE option_name LIKE 'woo_square_auto_sync_%';
DELETE FROM wp_options WHERE option_name LIKE 'woosquare_connection_logs%';
DELETE FROM wp_options WHERE option_name LIKE '%_settings ';
DELETE FROM wp_options WHERE option_name LIKE 'gift_card_create_order%';
DELETE FROM wp_options WHERE option_name LIKE 'cancel_payment_gf_card%';
DELETE FROM wp_options WHERE option_name LIKE 'square_gift_card_charge%';
DELETE FROM wp_options WHERE option_name LIKE 'gift_card_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'gift_card_response_%';
DELETE FROM wp_options WHERE option_name LIKE 'square_payment_begin_time%';
DELETE FROM wp_options WHERE option_name LIKE '%transient_getSquareItems';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sku', 'product_modifier_group_name', 'square_id', 'is_square_sync', 'term_meta_price', 'term_meta_version', 'term_meta_ordinal', 'term_meta_set_name_ordinal', '_manage_stock', 'variation_square_id', '_stock', '_refund_amount', '_product_attributes', '_stock_status', '_visibility', '_default_attributes', 'square_var_img_id', '_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price', '_min_price_variation_id', '_max_price_variation_id', '_min_regular_price_variation_id', '_max_regular_price_variation_id', '_regular_price', '_sale_price', '_global_unique_id', 'track_inventory_check', '_termid', 'square_master_img_data', '_product_image_gallery', 'square_master_img_id', '_wcsquare_disable_sync', 'admin_notice_square', 'log_woosquare_update_items_response', 'log_woosquare_update_items_request', 'log_woosquare_update_items_response_error', '_woo_square_attachment_id', 'square_gallery_img_ids', 'woosquare_gtin_code', '_square_customer_id', '_wc_pre_orders_enabled', '_wc_pre_orders_when_to_charge', '_square_charge_captured', '_woos_plus_customer_card_id', '_woos_plus_source_id', '_woos_plus_customer_id', 'customers_card_create_response');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sku', 'product_modifier_group_name', 'square_id', 'is_square_sync', 'term_meta_price', 'term_meta_version', 'term_meta_ordinal', 'term_meta_set_name_ordinal', '_manage_stock', 'variation_square_id', '_stock', '_refund_amount', '_product_attributes', '_stock_status', '_visibility', '_default_attributes', 'square_var_img_id', '_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price', '_min_price_variation_id', '_max_price_variation_id', '_min_regular_price_variation_id', '_max_regular_price_variation_id', '_regular_price', '_sale_price', '_global_unique_id', 'track_inventory_check', '_termid', 'square_master_img_data', '_product_image_gallery', 'square_master_img_id', '_wcsquare_disable_sync', 'admin_notice_square', 'log_woosquare_update_items_response', 'log_woosquare_update_items_request', 'log_woosquare_update_items_response_error', '_woo_square_attachment_id', 'square_gallery_img_ids', 'woosquare_gtin_code', '_square_customer_id', '_wc_pre_orders_enabled', '_wc_pre_orders_when_to_charge', '_square_charge_captured', '_woos_plus_customer_card_id', '_woos_plus_source_id', '_woos_plus_customer_id', 'customers_card_create_response');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sku', 'product_modifier_group_name', 'square_id', 'is_square_sync', 'term_meta_price', 'term_meta_version', 'term_meta_ordinal', 'term_meta_set_name_ordinal', '_manage_stock', 'variation_square_id', '_stock', '_refund_amount', '_product_attributes', '_stock_status', '_visibility', '_default_attributes', 'square_var_img_id', '_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price', '_min_price_variation_id', '_max_price_variation_id', '_min_regular_price_variation_id', '_max_regular_price_variation_id', '_regular_price', '_sale_price', '_global_unique_id', 'track_inventory_check', '_termid', 'square_master_img_data', '_product_image_gallery', 'square_master_img_id', '_wcsquare_disable_sync', 'admin_notice_square', 'log_woosquare_update_items_response', 'log_woosquare_update_items_request', 'log_woosquare_update_items_response_error', '_woo_square_attachment_id', 'square_gallery_img_ids', 'woosquare_gtin_code', '_square_customer_id', '_wc_pre_orders_enabled', '_wc_pre_orders_when_to_charge', '_square_charge_captured', '_woos_plus_customer_card_id', '_woos_plus_source_id', '_woos_plus_customer_id', 'customers_card_create_response');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sku', 'product_modifier_group_name', 'square_id', 'is_square_sync', 'term_meta_price', 'term_meta_version', 'term_meta_ordinal', 'term_meta_set_name_ordinal', '_manage_stock', 'variation_square_id', '_stock', '_refund_amount', '_product_attributes', '_stock_status', '_visibility', '_default_attributes', 'square_var_img_id', '_price', '_min_variation_price', '_max_variation_price', '_min_variation_regular_price', '_max_variation_regular_price', '_min_price_variation_id', '_max_price_variation_id', '_min_regular_price_variation_id', '_max_regular_price_variation_id', '_regular_price', '_sale_price', '_global_unique_id', 'track_inventory_check', '_termid', 'square_master_img_data', '_product_image_gallery', 'square_master_img_id', '_wcsquare_disable_sync', 'admin_notice_square', 'log_woosquare_update_items_response', 'log_woosquare_update_items_request', 'log_woosquare_update_items_response_error', '_woo_square_attachment_id', 'square_gallery_img_ids', 'woosquare_gtin_code', '_square_customer_id', '_wc_pre_orders_enabled', '_wc_pre_orders_when_to_charge', '_square_charge_captured', '_woos_plus_customer_card_id', '_woos_plus_source_id', '_woos_plus_customer_id', 'customers_card_create_response');
DELETE FROM wp_postmeta WHERE meta_key IN ('customers_card_create_err', '_wfocu_custom_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('customers_card_create_err', '_wfocu_custom_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('customers_card_create_err', '_wfocu_custom_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('customers_card_create_err', '_wfocu_custom_page');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'order_pa_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'order_pa_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'order_pa_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'order_pa_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'square_master_img_id_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'square_master_img_id_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'square_master_img_id_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'square_master_img_id_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'product_sync_square_id%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'product_sync_square_id%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'product_sync_square_id%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'product_sync_square_id%';

