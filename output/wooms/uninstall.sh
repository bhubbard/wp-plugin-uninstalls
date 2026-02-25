#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooms_set_folders'
wp option delete 'wooms_logger_enable'
wp option delete 'woomss_login'
wp option delete 'woomss_pass'
wp option delete 'wooms_order_additional_notes_enable'
wp option delete 'wooms_order_number_from_moysklad'
wp option delete 'wooms_order_shipment_item_code'
wp option delete 'wooms_order_statuses_match'
wp option delete 'wooms_enable_orders_statuses_updater'
wp option delete 'wooms_order_statuses_from_moysklad'
wp option delete 'wooms_enable_webhooks'
wp option delete 'wooms_get_number_async_enable'
wp option delete 'wooms_orders_send_prefix_postfix'
wp option delete 'wooms_orders_send_check_prefix_postfix'
wp option delete 'wooms_orders_send_reserved'
wp option delete 'wooms_org_name'
wp option delete 'wooms_clients_update_enable'
wp option delete 'wooms_orders_sender_enable'
wp option delete 'wooms_attr_enabled'
wp option delete 'woomss_gallery_sync_enabled'
wp option delete 'woomss_gallery_replace_to_sync'
wp option delete 'wooms_products_bundle_enable'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woomss_warehouse_id'
wp option delete 'woomss_stock_sync_enabled'
wp option delete 'woomss_variations_sync_enabled'
wp option delete 'wooms_batch_size'
wp option delete 'wooms_replace_title'
wp option delete 'wooms_replace_description'
wp option delete 'wooms_short_description'
wp option delete 'wooms_categories_include_children'
wp option delete 'wooms_session_id'
wp option delete 'woomss_categories_sync_enabled'
wp option delete 'wooms_product_hiding_disable'
wp option delete 'woomss_images_replace_to_sync'
wp option delete 'woomss_images_sync_enabled'
wp option delete 'wooms_price_id'
wp option delete 'wooms_products_services_enable'
wp option delete 'wooms_config'
wp option delete 'wooms_price_sale_name'
wp option delete 'wooms_orders_send_warehouse'
wp option delete 'wooms_use_uuid'
wp option delete 'wooms_tax_support'
wp option delete 'wooms_use_code_as_article_enable'

# Delete Transients
wp transient delete 'wooms_currency_api'
wp transient delete 'wooms_order_statuses'
wp transient delete 'wooms_shipment_href'
wp transient delete 'wooms_order_timestamp_end'
wp transient delete 'gallery_images_downloaded'
wp transient delete 'wooms_warehouse_name'
wp transient delete 'wooms_variations_image_sync_finish_timestamp'
wp transient delete 'wooms_check_moysklad_tariff'
wp transient delete 'wooms_check_login_password'
wp transient delete 'wooms_variations_hiding_pause'
wp transient delete 'wooms_start_timestamp'
wp transient delete 'wooms_variant_start_timestamp'
wp transient delete 'wooms_offset_hide_variations'

# Clear Cron Jobs
wp cron event delete 'wooms_monitoring'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_changed_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_changed_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_changed_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_changed_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lock_callback_update'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lock_callback_update'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lock_callback_update'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lock_callback_update'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_order_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_order_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_order_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_order_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_send_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_send_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_send_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_send_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_data_for_get_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_data_for_get_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_data_for_get_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_data_for_get_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_updated_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_updated_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_updated_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_updated_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_updated_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_updated_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_updated_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_updated_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_session_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_session_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_session_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_session_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wooms_url_for_get_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wooms_url_for_get_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wooms_url_for_get_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wooms_url_for_get_thumbnail'"
