#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'trafficmanager_wc_last_import_result'
wp option delete 'woocommerce_trafficmanager-plugin_settings'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'trafficmanager_wc_fetch_promo_codes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tm_import'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tm_import'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tm_import'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tm_import'"
