#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ccoos_tracking_numbers'
wp option delete 'ccoos_api_key'
wp option delete 'ccoos_frequency'
wp option delete 'ccoos_email_on_update'
wp option delete 'ccoos_tracking_suppress_note_email'
wp option delete 'ccoos_tracking_mark_completed'

# Clear Cron Jobs
wp cron event delete 'ccoos_stock_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_discontinued'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_discontinued'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_discontinued'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_discontinued'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
