#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logs'"
wp option delete 'actirise-api_version'
wp option delete 'actirise-api-lastupdate'
wp option delete 'actirise-debug-last-update'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%adstxt-lastupdate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%presizeddiv-lastupdate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%fastcmp-lastupdate'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%init-plugin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-presizeddiv-selected'"

# Clear Cron Jobs
wp cron event delete 'actirise_validate_xpath_after_update'
wp cron event delete 'actirise_cron_update_presized_div'
wp cron event delete 'actirise_cron_update_adstxt'
wp cron event delete 'actirise_cron_update_fast_cmp'
wp cron event delete 'actirise_cron_check_adstxt'
wp cron event delete 'actirise_cron_check_slots'
wp cron event delete 'actirise_cron_event_annotation'
wp cron event delete 'actirise_cron_update_debug_token'
wp cron event delete 'actirise_cron_get_api_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
