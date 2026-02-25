#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sp_suggest_subject'
wp option delete 'sp_suggest_message'
wp option delete 'sp_suggest_status'
wp option delete 'sp_cron_event'
wp option delete 'sp_custom_time'
wp option delete 'suggest_subject'

# Clear Cron Jobs
wp cron event delete 'mycronjob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
