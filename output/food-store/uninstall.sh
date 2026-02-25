#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'foodstore_meta_box_errors'
wp option delete '_wfs_default_service'
wp option delete '_wfs_enable_special_note'
wp option delete 'active_sitewide_plugins'
wp option delete '_wfs_enable_asap'
wp option delete '_wfs_asap_label'
wp option delete '_wfs_enable_lazy_loading'
wp option delete '_wfs_listing_sidebar_is_sticky'
wp option delete '_wfs_purchase_redirect'
wp option delete '_wfs_enable_title_popup'
wp option delete '_wfs_enable_service'
wp option delete '_wfs_service_modal_option'
wp option delete '_wfs_primary_color_scheme'
wp option delete '_wfs_secondary_color_scheme'
wp option delete '_wfs_user_stylesheet'
wp option delete '_wfs_min_delivery_order_amount'
wp option delete '_wfs_min_delivery_order_amount_error'
wp option delete '_wfs_min_pickup_order_amount'
wp option delete '_wfs_min_pickup_order_amount_error'
wp option delete '_wfs_enable_checkout_fields'
wp option delete 'foodstore_db_version'
wp option delete 'foodstore_version'
wp option delete '_wfs_adv_keep_other_product_types'
wp option delete '_wfs_send_email_on_order_update'
wp option delete '_wfs_no_slot_message'
wp option delete '_wfs_enable_shipping_selection'
wp option delete '_wfs_catalog_mode'
wp option delete '_wfs_adv_remove_data_on_uninstall'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'enable_pickup'
wp option delete '_wfs_enable_pickup'
wp option delete 'enable_delivery'
wp option delete '_wfs_enable_delivery'
wp option delete 'pickup_time_interval'
wp option delete '_wfs_pickup_time_interval'
wp option delete 'delivery_time_interval'
wp option delete '_wfs_delivery_time_interval'
wp option delete '_wfs_store_time_format'
wp option delete '_wfs_listing_column_count'
wp option delete '_wfs_exclude_categories'
wp option delete '_wfs_open_time'
wp option delete '_wfs_close_time'
wp option delete '_wfs_store_open_always'
wp option delete 'woocommerce_tax_display_shop'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_time_interval'"
wp option delete '_wfs_food_prepation_time'
wp option delete '_wfs_pickup_label'
wp option delete '_wfs_delivery_label'
wp option delete '_wfs_store_closed_message'
wp option delete 'foodstore_order_online_page_id'
wp option delete '_wfs_order_later_label'
wp option delete '_wfs_cart_style'
wp option delete '_wfs_mobile_cart_style'
wp option delete '_wfs_enable_empty_cart_confirmation'
wp option delete '_wfs_enable_confirmation_device'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_page_id'"
wp option delete '_wfs_listing_show_sidebar_count'
wp option delete '_wfs_cart_empty_confirmation_message'
wp option delete 'woocommerce_tax_total_display'
wp option delete '_wfs_listing_hide_cart_area'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_addon_selection_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_addon_selection_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_addon_selection_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_addon_selection_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_addon_item_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_addon_item_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_addon_item_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_addon_item_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_product_addon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_product_addon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_product_addon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_product_addon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_variation_price_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_variation_price_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_variation_price_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_variation_price_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_food_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_food_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_food_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_food_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_disable_instruction'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_disable_instruction'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_disable_instruction'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_disable_instruction'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_product_service_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_product_service_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_product_service_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_product_service_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_order_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_order_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_order_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_order_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_service_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_service_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_service_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_service_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_service_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_service_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_service_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_service_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wfs_service_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wfs_service_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wfs_service_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wfs_service_time'"
