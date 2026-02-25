#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'izettle_use_new_us_tax_settings'
wp option delete 'woocommerce_prices_include_tax'
wp option delete 'izettle_do_not_match_with_uuid'
wp option delete 'izettle_turn_off_acf_support'
wp option delete 'izettle_use_new_product_matching'
wp option delete 'izettle_handle_tax_rate'
wp option delete 'izettle_update_name_from_webhook'
wp option delete 'izettle_update_barcode_from_webhook'
wp option delete 'izettle_update_price_from_webhook'
wp option delete 'izettle_update_cost_price_from_webhook'
wp option delete 'izettle_do_not_sync_virtual'
wp option delete 'izettle_products_include'
wp option delete 'izettle_product_status'
wp option delete 'izettle_product_categories'
wp option delete 'zettle_product_category_export_filter_v2'
wp option delete 'izettle_exclude_product_categories'
wp option delete 'izettle_sync_in_stock_only'
wp option delete 'izettle_any_text_selection'
wp option delete 'izettle_alternate_any_text'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'izettle_tax_class_mapping_%'"
wp option delete 'woocommerce_weight_unit'
wp option delete 'izettle_import_stocklevel'
wp option delete 'izettle_when_changed_in_izettle'
wp option delete 'zettle_wpml_default_language'
wp option delete 'izettle_disable_notices'
wp option delete 'izettle_lock_organization_uuid'
wp option delete 'izettle_organization_uuid'
wp option delete 'izettle_extra_admin'
wp option delete 'izettle_use_advanced_encoding'
wp option delete 'izettle_delete_variants'
wp option delete 'izettle_webhook_priority'
wp option delete 'izettle_logging'
wp option delete 'zettle_force_change_stocklevel_in_woocommerce'
wp option delete 'izettle_trigger_stock_notification_emails'
wp option delete 'zettle_save_post_on_stockchange'
wp option delete 'zettle_save_post_on_order'
wp option delete 'izettle_product_pricelist'
wp option delete 'zettle_hide_double_import_options'
wp option delete 'izettle_delete_product_meta_data_on_new_product'
wp option delete 'izettle_trigger_on_product_meta_update'
wp option delete 'izettle_process_giftcard_as_item'
wp option delete 'zettle_enable_purchase_processing'
wp option delete 'izettle_purchase_sync_function'
wp option delete 'izettle_us_sales_tax_options'
wp option delete 'izettle_product_update_barcode'
wp option delete 'izettle_product_barcode_generate'
wp option delete 'izettle_import_barcode'
wp option delete 'izettle_maybe_use_parent_sku'
wp option delete 'izettle_add_sku_to_name'
wp option delete 'izettle_set_order_to_status'
wp option delete 'izettle_import_name'
wp option delete 'izettle_import_stocklevel_as_metadata_value'
wp option delete 'izettle_product_sync_model'
wp option delete 'izettle_product_sync_model_force_daily'
wp option delete 'zettle_access_token_lock'
wp option delete 'izettle_username'
wp option delete 'bjorntech_alternate_webhook_url'
wp option delete 'izettle_purchase_sync_model'
wp option delete 'izettle_use_old_inventory_api'
wp option delete 'izettle_dont_use_improved_curl'
wp option delete 'izettle_use_v2_api'
wp option delete 'izettle_send_through_service'
wp option delete 'izettle_webhook_status'
wp option delete 'izettle_webhook_signing_key'
wp option delete 'izettle_access_token'
wp option delete 'izettle_expires_in'
wp option delete 'izettle_valid_to'
wp option delete 'izettle_last_synced'
wp option delete 'izettle_is_trial'
wp option delete 'izettle_alternate_service_url'
wp option delete 'izettle_product_sync_model_force_daily_time'
wp option delete 'izettle_import_barcode_meta'
wp option delete 'izettle_product_barcode_identifier'
wp option delete 'izettle_product_barcode_country'
wp option delete 'izettle_product_barcode_company'
wp option delete 'zettle_use_pos_barcode'
wp option delete 'izettle_product_barcode_meta'
wp option delete 'izettle_variation_images'
wp option delete 'izettle_image_size'
wp option delete 'izettle_always_upload_image'
wp option delete 'izettle_product_import_batch_size'
wp option delete 'izettle_queue_webhook_calls'
wp option delete 'izettle_sophisticated_manual_sync'
wp option delete 'izettle_import_type'
wp option delete 'zettle_convert_simple_to_variable'
wp option delete 'izettle_ignore_attributes_existing_products'
wp option delete 'izettle_import_create_global_attributes'
wp option delete 'zettle_sort_terms_alphabetically'
wp option delete 'izettle_import_variant_images'
wp option delete 'izettle_set_products_to_status'
wp option delete 'izettle_import_images'
wp option delete 'izettle_import_additional_images'
wp option delete 'izettle_import_weight'
wp option delete 'izettle_import_description'
wp option delete 'izettle_import_category'
wp option delete 'izettle_import_unit_name'
wp option delete 'izettle_import_price'
wp option delete 'izettle_import_cost_price'
wp option delete 'izettle_import_sku'
wp option delete 'izettle_products_import_include_categories'
wp option delete 'izettle_products_import_exclude_categories'
wp option delete 'zettle_enable_uuid_edit'
wp option delete 'izettle_show_product_metabox'
wp option delete 'izettle_put_sku_first'
wp option delete 'izettle_mark_product_on_sale'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'product-category-advanced-qty-quantity-suffix-%'"
wp option delete 'woo-advanced-qty-quantity-suffix'
wp option delete 'izettle_update_category_on_izproduct'
wp option delete 'izettle_online_sales_active'
wp option delete 'izettle_online_sales_description'
wp option delete 'izettle_zettle_tax_rate'
wp option delete 'izettle_force_product_currency'
wp option delete 'izettle_product_cost_price'
wp option delete 'zettle_wpml_multi_currency_compatibility'
wp option delete 'zettle_update_sku'
wp option delete 'izettle_do_not_match_external_reference'
wp option delete 'izettle_never_create_new_products'
wp option delete 'izettle_number_of_variations'
wp option delete 'izettle_turn_off_product_zettle_categories'
wp option delete 'izettle_delete_izettle_products'
wp option delete 'zettle_sku_as_externalreference'
wp option delete 'izettle_do_not_queue_admin_updates'
wp option delete 'izettle_last_product_sync_done'
wp option delete 'zettle_process_purchase_order_no_reduce_stock'
wp option delete 'zettle_no_new_order_email'
wp option delete 'zettle_no_new_order_email_customer'
wp option delete 'zettle_modify_order_number'
wp option delete 'izettle_last_purchase_hash'
wp option delete 'izettle_last_purchases_sync_done'
wp option delete 'izettle_purchase_startdate'
wp option delete 'zettle_remove_zettle_item_id'
wp option delete 'izettle_order_customer'
wp option delete 'zettle_process_purchase_order_id'
wp option delete 'zettle_process_purchase_order_id_free_amount'
wp option delete 'zettle_process_purchase_customer_id'
wp option delete 'zettle_process_purchase_comments'
wp option delete 'zettle_process_purchase_new_wc_customer'
wp option delete 'izettle_order_email'
wp option delete 'izettle_gift_card_id'
wp option delete 'izettle_add_comment_to_meta'
wp option delete 'zettle_force_send_new_order_email_to_admin'
wp option delete 'izettle_set_order_to_status_no_stock'
wp option delete 'izettle_stocklevel_from_woocommerce'
wp option delete 'zettle_direct_stock_updates'
wp option delete 'izettle_display_stocklevel_as_separate_field'
wp option delete 'woocommerce_stock_format'
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'izettle_set_custom_low_stock_notification'
wp option delete 'izettle_low_stock_amount'
wp option delete 'izettle_low_stock_notification'
wp option delete 'izettle_never_turn_off_stock_tracking'
wp option delete 'izettle_allow_metadata_deletion'
wp option delete 'izettle_webhook_price'
wp option delete 'izettle_stocklevel_from_izettle_change'
wp option delete 'izettle_stocklevel_sync_model'
wp option delete 'izettle_webhook_barcode'
wp option delete 'izettle_webhook_cost_price'
wp option delete 'izettle_create_global_attributes'
wp option delete 'izettle_webhook_name'
wp option delete 'izettle_webhook_sku'
wp option delete 'izettle_webhook_category'
wp option delete 'izettle_webhook_images'
wp option delete 'izettle_webhook_create_global_attributes'
wp option delete 'izettle_webhook_additional_images'
wp option delete 'izettle_webhook_variant_images'
wp option delete 'izettle_webhook_weight'
wp option delete 'izettle_product_generate_barcode'
wp option delete 'izettle_alternate_client_id'
wp option delete 'izettle_action_scheduler_batch_size'
wp option delete 'izettle_action_scheduler_time_limit'
wp option delete 'izettle_manual_cron'
wp option delete 'izettle_installed_version'
wp option delete 'zettle_skip_webhook_signature_check'
wp option delete 'izettle_skip_checking_external_reference_for_created_products'
wp option delete 'izettle_force_delete_in_woocommerce'

# Delete Transients
wp transient delete 'zettle_tax_rates'
wp transient delete 'zettle_tax_settings'
wp transient delete 'izettle_categories'
wp transient delete 'izettle_notices'
wp transient delete 'izettle_last_purchase_sync'
wp transient delete 'izettle_last_product_sync'
wp transient delete 'izettle_connect_to_service_lock'
wp transient delete 'izettle_number_of_failed_connections'
wp transient delete 'izettle_failed_connection'
wp transient delete 'izettle_locations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_izettle_all_products_%' OR option_name LIKE '_site_transient_izettle_all_products_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sync_products_from_izettle_%' OR option_name LIKE '_site_transient_sync_products_from_izettle_%'"
wp transient delete 'wc_attribute_taxonomies'
wp transient delete 'izettle_upgraded_sync_from'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_izettle_stocklevel_update%' OR option_name LIKE '_site_transient_izettle_stocklevel_update%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sync_purchases_from_izettle_%' OR option_name LIKE '_site_transient_sync_purchases_from_izettle_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_zettle_inventory_balance_changed_%' OR option_name LIKE '_site_transient_zettle_inventory_balance_changed_%'"
wp transient delete 'izettle_upgraded_4_2_0'
wp transient delete 'izettle_upgraded_4_8_0'
wp transient delete 'izettle_upgraded_5_1_1'
wp transient delete 'izettle_upgraded_5_1_2'
wp transient delete 'izettle_upgraded_6_5_0'
wp transient delete 'izettle_upgraded_7_0_0'
wp transient delete 'izettle_upgraded_7_3_0'
wp transient delete 'izettle_activated_or_upgraded'
wp transient delete 'izettle_did_show_unauthorized_info'
wp transient delete 'izettle_did_show_expire_warning'
wp transient delete 'izettle_did_show_trial_info'
wp transient delete 'izettle_did_show_avaliable_info'
wp transient delete 'zettle_signature_connecting_to_service'
wp transient delete 'izettle_activation_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_izettle_variant_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_izettle_variant_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_izettle_variant_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_izettle_variant_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_izettle_image_lookup_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_izettle_image_lookup_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_izettle_image_lookup_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_izettle_image_lookup_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_izettle_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_izettle_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_izettle_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_izettle_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zettle_barcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zettle_barcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zettle_barcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zettle_barcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpm_gtin_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpm_gtin_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpm_gtin_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpm_gtin_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_izettle_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_izettle_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_izettle_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_izettle_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_izettle_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_izettle_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_izettle_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_izettle_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woocommerce_izettle_product_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woocommerce_izettle_product_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woocommerce_izettle_product_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woocommerce_izettle_product_uuid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advanced-qty-quantity-suffix'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advanced-qty-quantity-suffix'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advanced-qty-quantity-suffix'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advanced-qty-quantity-suffix'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zettle_product_cat_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zettle_product_cat_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zettle_product_cat_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zettle_product_cat_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_izettle_product_etag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_izettle_product_etag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_izettle_product_etag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_izettle_product_etag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_izettle_variation_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_izettle_variation_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_izettle_variation_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_izettle_variation_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_izettle_cost_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_izettle_cost_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_izettle_cost_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_izettle_cost_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_izettle_nosync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_izettle_nosync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_izettle_nosync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_izettle_nosync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_processing_changes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_processing_changes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_processing_changes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_processing_changes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_processed_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_processed_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_processed_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_processed_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_processed_with'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_processed_with'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_processed_with'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_processed_with'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'woosb_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_izettle_special_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_izettle_special_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_izettle_special_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_izettle_special_price'"
