#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%language'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%source'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cronjobtime'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"

# Clear Cron Jobs
wp cron event delete 'opic_nm_cronjob'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'orginal_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'orginal_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'orginal_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'orginal_url'"
