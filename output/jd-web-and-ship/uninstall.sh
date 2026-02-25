#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jdws_order_send_running'
wp option delete 'jdws_order_send_total'
wp option delete 'jdws_order_send_processed'
wp option delete 'jdws_order_sync_result'
wp option delete 'jdws_selected_sync_ids'
wp option delete 'jdws_webhook_registered'
wp option delete 'jdws_webhook_token'
wp option delete 'jdws_options'
wp option delete 'jdws_sync_running'
wp option delete 'jdws_sync_processed'
wp option delete 'jdws_sync_total'
wp option delete 'jdws_sync_failed'
wp option delete 'jdws_logger_db_version'

# Clear Cron Jobs
wp cron event delete 'jdws_send_pending_orders'
wp cron event delete 'jdws_cleanup_sync_logs_daily'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_jdws_remote_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_jdws_remote_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_jdws_remote_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_jdws_remote_product_id'"
