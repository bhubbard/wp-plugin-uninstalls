#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'syncy_square_selected_location'
wp option delete 'syncy_autosyncwootosquare'
wp option delete 'syncy_autosyncsquaretowoo'
wp option delete 'syncy_autosync_orders'
wp option delete 'syncy_autosync_users'
wp option delete 'syncy_autosync_order_status'
wp option delete 'syncy_square_to_woo_product_attributes'
wp option delete 'syncy_woo_to_square_product_attributes'
wp option delete 'syncy_sandbox_mode'
wp option delete 'syncy_square_access_token'
wp option delete 'woocommerce_default_country'

# Clear Cron Jobs
wp cron event delete 'syncy_bulk_stock_update_cron_event'
wp cron event delete 'syncy_cron_stock_sync_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'syncy_square_catalog_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'syncy_square_catalog_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'syncy_square_catalog_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'syncy_square_catalog_object_id'"
