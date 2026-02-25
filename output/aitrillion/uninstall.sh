#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_aitrillion_api_key'
wp option delete '_aitrillion_api_password'
wp option delete '_aitrillion_script_url'
wp option delete '_aitrillion_affiliate_module'
wp option delete '_aitrillion_created_orders'
wp option delete '_aitrillion_updated_orders'
wp option delete 'woocommerce_weight_unit'
wp option delete 'aitrillion_data_sync_schedule_time'
wp option delete '_aitrillion_created_users'
wp option delete '_aitrillion_failed_sync_users'
wp option delete '_aitrillion_updated_users'
wp option delete '_aitrillion_deleted_users'
wp option delete '_aitrillion_created_products'
wp option delete '_aitrillion_failed_sync_products'
wp option delete '_aitrillion_updated_products'
wp option delete '_aitrillion_deleted_products'
wp option delete '_aitrillion_created_categories'
wp option delete '_aitrillion_failed_sync_categories'
wp option delete '_aitrillion_updated_categories'
wp option delete '_aitrillion_deleted_categories'
wp option delete '_aitrillion_failed_sync_orders'
wp option delete '_aitrillion_deleted_orders'
wp option delete '_aitrillion_failed_sync_order'
wp option delete '_aitrillion_shop_updated'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete '_aitrillion_script_version'
wp option delete '_aitrillion_block_loyalty_members'

# Clear Cron Jobs
wp cron event delete 'aitrillion_data_sync_schedule'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitrillion_user_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitrillion_user_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitrillion_user_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitrillion_user_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitrillion_product_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitrillion_product_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitrillion_product_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitrillion_product_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitrillion_category_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitrillion_category_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitrillion_category_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitrillion_category_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitrillion_order_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitrillion_order_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitrillion_order_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitrillion_order_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aitrillion_sync_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aitrillion_sync_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aitrillion_sync_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aitrillion_sync_date'"
