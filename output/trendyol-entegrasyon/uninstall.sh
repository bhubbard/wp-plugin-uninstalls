#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trendyol_sync'
wp option delete 'trendyol_id'
wp option delete 'trendyol_api_key'
wp option delete 'trendyol_api_secret'
wp option delete 'trendyol_order_sync_interval'

# Clear Cron Jobs
wp cron event delete 'trendyol_orders_check_event'

