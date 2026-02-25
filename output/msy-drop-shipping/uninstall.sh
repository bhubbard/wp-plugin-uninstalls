#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'msy_price_settings_options'
wp option delete 'msy_user_registration_data'
wp option delete 'msy_imported_products_ids'
wp option delete 'msy_main_settings_options'
wp option delete 'msyds_notice_message'
wp option delete 'msyds_last_order_sync_date'

# Clear Cron Jobs
wp cron event delete 'msy_drop_shipping_categories'
wp cron event delete 'msy_drop_shipping_products'
wp cron event delete 'msy_drop_shipping_images'
wp cron event delete 'msy_drop_shipping_products_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msyds_margin_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msyds_margin_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msyds_margin_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msyds_margin_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msyds_order_synced'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msyds_order_synced'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msyds_order_synced'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msyds_order_synced'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msyds_product_include'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msyds_product_include'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msyds_product_include'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msyds_product_include'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msyds_main_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msyds_main_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msyds_main_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msyds_main_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msyds_order_deleted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msyds_order_deleted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msyds_order_deleted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msyds_order_deleted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'msyds_pics_urls'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'msyds_pics_urls'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'msyds_pics_urls'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'msyds_pics_urls'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
