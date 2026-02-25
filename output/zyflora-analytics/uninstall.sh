#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zyflora_track_logged_in'
wp option delete 'zyflora_exclude_bots'
wp option delete 'zyflora_track_pages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'zyflora_total_%'"
wp option delete 'zyflora_analytics_activated'

# Clear Cron Jobs
wp cron event delete 'zyflora_cleanup_old_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zyflora_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zyflora_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zyflora_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zyflora_views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zyflora_sessions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zyflora_sessions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zyflora_sessions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zyflora_sessions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zyflora_views_direct'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zyflora_views_direct'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zyflora_views_direct'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zyflora_views_direct'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zyflora_sessions_direct'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zyflora_sessions_direct'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zyflora_sessions_direct'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zyflora_sessions_direct'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zyflora_views_unknown'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zyflora_views_unknown'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zyflora_views_unknown'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zyflora_views_unknown'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_zyflora_views_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_zyflora_views_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_zyflora_views_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_zyflora_views_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_zyflora_sessions_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_zyflora_sessions_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_zyflora_sessions_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_zyflora_sessions_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_direct'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_direct'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_direct'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_direct'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_other'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_other'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_other'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_other'"
