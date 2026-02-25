#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shift8_google_api_key'
wp option delete 'shift8_google_place_ids'

# Clear Cron Jobs
wp cron event delete 'shift8_business_updater_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shift8_google_place_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shift8_google_place_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shift8_google_place_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shift8_google_place_id'"
