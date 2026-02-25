#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aca_settings'
wp option delete 'aca_version'

# Delete Transients
wp transient delete 'aca_activated'
wp transient delete 'aca_dashboard_stats_cache'

# Clear Cron Jobs
wp cron event delete 'aca_daily_cleanup'
wp cron event delete 'aca_email_notifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
