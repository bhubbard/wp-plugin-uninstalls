#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_paged'"

# Delete Transients
wp transient delete 'sucuriscan_online_users'

# Clear Cron Jobs
wp cron event delete 'sucuriscan_scheduled_scan'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sucuriscan_preferred_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sucuriscan_preferred_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sucuriscan_preferred_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sucuriscan_preferred_theme'"
