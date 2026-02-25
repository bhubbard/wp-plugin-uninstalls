#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aramex_loggedin_username'
wp option delete 'aramex_info_arx_encryption_key'
wp option delete 'aramex_info_arx_encryption_iv'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'aramex_stock_sync_done_%'"
wp option delete 'aramex_api_urls'

# Clear Cron Jobs
wp cron event delete 'aramex_importso_cron_hook'
wp cron event delete 'aramex_delete_orders_cron_hook'
wp cron event delete 'aramex_delete_log_cron_hook'
wp cron event delete 'aramex_status_sync_cron_hook'
wp cron event delete 'aramex_stock_sync_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_manage_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
