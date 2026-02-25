#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fal_allow_tracking'
wp option delete 'fal_tracker_last_send'
wp option delete '_surror_tools_town_secret'
wp option delete 'surror_tools_town_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'surror_notices_dismissed_%'"

# Delete Transients
wp transient delete 'fal_ask_again'

# Clear Cron Jobs
wp cron event delete 'fal_tracker_send_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'surror_notices_dismissed_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'surror_notices_dismissed_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'surror_notices_dismissed_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'surror_notices_dismissed_%'"
