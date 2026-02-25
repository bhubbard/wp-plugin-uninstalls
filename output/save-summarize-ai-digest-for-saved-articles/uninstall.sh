#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'saveamsu_saved_page_id'
wp option delete 'ss_saved_page_id'
wp option delete 'ss_settings'

# Clear Cron Jobs
wp cron event delete 'ss_weekly_digest_event'
wp cron event delete 'saveamsu_weekly_digest_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_saveamsu_enable_save'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_saveamsu_enable_save'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_saveamsu_enable_save'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_saveamsu_enable_save'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ss_enable_save'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ss_enable_save'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ss_enable_save'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ss_enable_save'"
