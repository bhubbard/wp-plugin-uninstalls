#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nukiwp__settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%]' OR option_name LIKE '_site_transient_%]'"

# Clear Cron Jobs
wp cron event delete 'nuki_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'booking_pin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'booking_pin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'booking_pin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'booking_pin'"
