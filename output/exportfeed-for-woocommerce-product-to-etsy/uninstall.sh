#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'etcpf_etsy_shops'
wp option delete 'etcpf_shop_name'
wp option delete 'ETCPF_RESOLVED'
wp option delete 'etcpf_attribute_user_map_Etsy'
wp option delete 'etcpf_oauth_token'
wp option delete 'etcpf_oauth_refresh_token'
wp option delete 'etcpf_stage'
wp option delete 'etcpf_connected_to_shop'
wp option delete 'etcpf_shop_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'etcpf_shop_sections_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'etcpf_shop_sections_count_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'etsy_current_uploading_%'"
wp option delete 'currently_uploading_feed_id'
wp option delete 'et_cp_feed_order'
wp option delete 'et_cpf_feed_order_reverse'
wp option delete 'etcpf_login_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'etcpf_etsyfeedActivity_%'"
wp option delete 'etcpf_order_limit'
wp option delete 'etcf_etsy_to_woo_order_sync_left'
wp option delete 'Etsy-etsy-merchant-custom-settings'
wp option delete 'etcpf_licensekey_expired'
wp option delete 'Etsy-etsy-merchant-settings'
wp option delete 'etcpf_update_status'
wp option delete 'etcpf_last_sync_date'
wp option delete 'etcpf_order_limit_reached_mail_sent'
wp option delete 'etcpf_api_key'
wp option delete 'etcpf_secret_key'
wp option delete 'etcpf_imported_to_woocommerce'
wp option delete 'etsy_free_plan_product_import_limit'
wp option delete 'etsy_linked_product_import_count'
wp option delete 'etcpf_order_failed_limit_sent'
wp option delete 'etcpf_currency_code_etsy'
wp option delete 'etcpf_variation_image_linkls'
wp option delete 'et_cp_feed_delay'
wp option delete 'etcpf_shipping_template_id'
wp option delete 'etcpf_db_upgrade_available'
wp option delete 'last_api_hit_timestamp'
wp option delete 'etsy_api_count'
wp option delete 'etcpf_oauth_token_secret'
wp option delete 'etsy_product_upload_count'
wp option delete 'etsy_free_plan_product_upload_limit'
wp option delete 'etcpf_processing_profile_id'
wp option delete 'etcpf_return_policies'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'etsy_variation_on_property_%'"
wp option delete 'etcpf_woo_etsy_connector_url'
wp option delete 'etcpf_conversion_api_key'
wp option delete 'etcpf_failed_order_email_sent'
wp option delete 'etcpf_oauth_verfier'
wp option delete 'etcpf_shop_disconnected'
wp option delete 'etcpf_production_partners'
wp option delete 'etcpf_etsy_shop_ids'
wp option delete 'etcpf_secret'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'listing_etsy_et'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-etsy-merchant-settings'"
wp option delete 'woocommerce_notify_no_stock_amount'
wp option delete 'linked_sku_value_count'
wp option delete 'etcpf_licensekey'
wp option delete 'etcpf_localkey'
wp option delete 'etcpf_db_upgraded'
wp option delete 'etcpf_current_db_version'
wp option delete 'imported_to_woocommerce'
wp option delete 'not_linked_product'
wp option delete 'linked_product_count'
wp option delete 'etcpf_last_table_optimization'
wp option delete 'etcpf_indexes_last_checked'
wp option delete 'et_cp_localkey'
wp option delete 'et_cp_feed_limit'
wp option delete 'et_cp_feed_count'
wp option delete 'etsy_order_offset'
wp option delete 'etcpf_license_message'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'etcpf_coming_from_product_import'
wp transient delete 'etcpf_updating_counts'
wp transient delete 'update_plugins'
wp transient delete 'etcpf_notification_message'
wp transient delete 'etcpf_error_message'
wp transient delete 'fs_snooze_period'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'auto_etsy_order_hook'
wp cron event delete 'auto_feed_submission_hook'
wp cron event delete 'update_etsyfeeds_hook'
wp cron event delete 'run_refresh_token_cron'
wp cron event delete 'etcpf_auto_feed_submission_hook'
wp cron event delete 'etcpf_auto_email_failed_orders'
wp cron event delete 'etcpf_mutipl_images_upload'
wp cron event delete 'etcpf_update_product_counts'
wp cron event delete 'etcpf_cleanup_cache'
wp cron event delete 'etcpf_product_update_event'
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_imported_by_etcpf'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_imported_by_etcpf'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_imported_by_etcpf'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_imported_by_etcpf'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'material'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'material'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'material'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'material'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'etcpf_etsy_receipt_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'etcpf_etsy_receipt_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'etcpf_etsy_receipt_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'etcpf_etsy_receipt_id'"
