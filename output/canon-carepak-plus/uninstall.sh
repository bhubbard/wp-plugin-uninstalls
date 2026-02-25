#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jal_db_version'
wp option delete 'woocommerce_currency'
wp option delete 'sortsearchtitle_db_version'

# Clear Cron Jobs
wp cron event delete 'my_oneminute_event'
wp cron event delete 'my_custom_5_minute_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_warranty'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_warranty'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_warranty'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_warranty'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_booking_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_booking_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_booking_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_booking_start'"
