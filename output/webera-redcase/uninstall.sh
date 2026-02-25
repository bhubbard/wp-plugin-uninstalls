#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'redcase_key'

# Delete Transients
wp transient delete 'd_daily_deals'

# Clear Cron Jobs
wp cron event delete 'd_daily_deals_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'deals_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'deals_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'deals_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'deals_data'"
