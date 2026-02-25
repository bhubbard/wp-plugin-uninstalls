#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apextmail'
wp option delete 'apext'
wp option delete 'apext_ver'

# Clear Cron Jobs
wp cron event delete 'post_expire'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pebr_day_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pebr_day_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pebr_day_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pebr_day_limit'"
