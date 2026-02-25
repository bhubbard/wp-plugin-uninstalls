#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc-coolca-branches'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc-coolca-branches-%'"
wp option delete 'wc-coolca-price'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc-coolca-%'"

# Clear Cron Jobs
wp cron event delete 'coolca-branches-cron-updater'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfmmp_profile_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfmmp_profile_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfmmp_profile_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfmmp_profile_id'"
