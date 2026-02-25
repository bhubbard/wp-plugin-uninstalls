#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'keybin_log_%'"
wp option delete 'keybin_log_retention_days'
wp option delete 'keybin_log_last_cleanup'
wp option delete 'keybin_error_email'
wp option delete 'keybfowo_last_import_product'
wp option delete 'keybin_import_total_pages'
wp option delete 'keybin_import_current_page'
wp option delete 'keybfowo_last_update_product'
wp option delete 'keybfowo_updated_page'
wp option delete 'keybfowo_last_update_product_end'
wp option delete 'keybfowo_last_update_restrictions'
wp option delete 'keybin_restrictions_update_total_pages'
wp option delete 'keybin_restrictions_update_current_page'
wp option delete 'keybfowo_last_update_price'
wp option delete 'keybin_price_update_total_pages'
wp option delete 'keybin_price_update_current_page'
wp option delete 'keybfowo_last_import_platforms'
wp option delete 'keybfowo_last_import_regions'
wp option delete 'keybfowo_last_order_key_cron'
wp option delete 'keybin_cat_import_total_pages'
wp option delete 'keybin_cat_import_current_page'
wp option delete 'keybin_known_categories'
wp option delete 'keybin_categories_last_sync'
wp option delete 'keybfowo_product_remove'
wp option delete 'keybfowo_product_remove1'
wp option delete 'keybfowo_product_remove2'
wp option delete 'keybfowo_listing_update'
wp option delete 'keybfowo_product_create'
wp option delete 'keybfowo_product_update'
wp option delete 'keybfowo_order_update'
wp option delete 'keybfowo_schedule_order_key'
wp option delete 'keybfowo_schedule_update_price'
wp option delete 'keybfowo_schedule_import_products'
wp option delete 'keybfowo_schedule_update_restrictions'
wp option delete 'keybfowo_last_import_product_failed'
wp option delete 'keybfowo_last_price_update_failed'
wp option delete 'keybin_log_update_products'
wp option delete 'keybin_loop_count'

# Clear Cron Jobs
wp cron event delete 'keybfowo_cron_order_key'
wp cron event delete 'keybfowo_cron_update_price'
wp cron event delete 'keybfowo_cron_import_products'
wp cron event delete 'keybfowo_cron_update_restrictions'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keybin_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keybin_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keybin_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keybin_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listingid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listingid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listingid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listingid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_import_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_import_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_import_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_import_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_platform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_platform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_platform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_platform'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_region'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_region'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_region'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_region'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keybfowo_restriction_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keybfowo_restriction_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keybfowo_restriction_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keybfowo_restriction_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_keybfowo_restrictions_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_keybfowo_restrictions_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_keybfowo_restrictions_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_keybfowo_restrictions_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price_update_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price_update_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price_update_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price_update_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_listing_update_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_listing_update_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_listing_update_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_listing_update_at'"
