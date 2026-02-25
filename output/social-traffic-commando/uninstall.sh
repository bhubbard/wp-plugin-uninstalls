#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'NS_SNAutoPoster'
wp option delete 'nxs_log_db_table_version'
wp option delete 'NSX_LogToEmail'
wp option delete 'NSX_LastTChecked'
wp option delete 'NS_SNriPosts'
wp option delete 'NSX_PostsQuery'

# Clear Cron Jobs
wp cron event delete 'stc_event_hook'
wp cron event delete 'nxs_hourly_event'
wp cron event delete 'nxs_querypost_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'snap%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'snap%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'snap%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'snap%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snapFB'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snapFB'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snapFB'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snapFB'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snapTW'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snapTW'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snapTW'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snapTW'"
