#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_roster_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_roster_data_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_roster_data_history_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_roster_data_log_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_roster_data_attendance_%'"

# Delete Transients
wp transient delete 'northern_beaches_websites'
wp transient delete 'wp-roster-update'

# Clear Cron Jobs
wp cron event delete 'wp_roster_send_automated_notifications'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-roster-roster-allocation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-roster-roster-allocation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-roster-roster-allocation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-roster-roster-allocation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-roster-profile-photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-roster-profile-photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-roster-profile-photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-roster-profile-photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-roster-preference'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-roster-preference'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-roster-preference'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-roster-preference'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp-roster-phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp-roster-phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp-roster-phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp-roster-phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
