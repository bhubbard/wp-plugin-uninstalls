#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ank_wp_ticket_debug_mode'
wp option delete 'ank_wp_ticket_api_key'
wp option delete 'ank_wp_ticket_api_url'
wp option delete 'ank_wp_ticket_event_sort_by'
wp option delete 'ank_wp_ticket_count_event_page'
wp option delete 'ank_wp_ticket_country'

# Clear Cron Jobs
wp cron event delete 'wp_logging_prune_routine'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wp_log_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wp_log_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wp_log_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wp_log_%'"
