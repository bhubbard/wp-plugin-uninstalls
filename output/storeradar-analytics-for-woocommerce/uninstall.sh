#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'storeradar_email_tracking_enabled'
wp option delete 'storeradar_show_activation_notice'

# Delete Transients
wp transient delete 'storeradar_error_logs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_storeradar_guest_%' OR option_name LIKE '_site_transient_storeradar_guest_%'"
wp transient delete 'storeradar_stored_carts'
wp transient delete 'storeradar_analytics_sessions'
wp transient delete 'storeradar_analytics_pageviews'
wp transient delete 'storeradar_analytics_summary'

# Clear Cron Jobs
wp cron event delete 'storeradar_cart_cleanup'
wp cron event delete 'storeradar_record_traffic_event'
wp cron event delete 'storeradar_analytics_cleanup'
wp cron event delete 'storeradar_heartbeat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_storeradar_cart_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_storeradar_cart_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_storeradar_cart_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_storeradar_cart_token'"
