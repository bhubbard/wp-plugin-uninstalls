#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woo_stock_sync_last_updated'
wp option delete 'wss_last_response'
wp option delete 'woo_stock_sync_log_retention'
wp option delete 'wss_last_sync'
wp option delete 'wss_db_version'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woo_stock_sync_role'
wp option delete 'woo_stock_sync_process_model'
wp option delete 'woo_stock_sync_batch_size'
wp option delete 'woo_stock_sync_enabled'
wp option delete 'wp_flash_messages'

# Clear Cron Jobs
wp cron event delete 'woo_stock_sync_log_clean'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_woo_stock_sync_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_woo_stock_sync_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_woo_stock_sync_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_woo_stock_sync_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wss_status_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wss_status_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wss_status_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wss_status_%'"
