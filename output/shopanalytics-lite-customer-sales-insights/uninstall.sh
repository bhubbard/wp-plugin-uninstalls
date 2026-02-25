#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shopanalytics_enable_logging'
wp option delete 'shopanalytics_enable_pro_previews'
wp option delete 'shopanalytics_light_charts'
wp option delete 'shopanalytics_log_retention_days'
wp option delete 'shopanalytics_lite_do_activation_redirect'
wp option delete 'shopanalytics_lite_settings'
wp option delete 'shopanalytics_lite_network_option'

# Clear Cron Jobs
wp cron event delete 'shopanalytics_custom_daily_log_cleanup_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_country'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_country'"
