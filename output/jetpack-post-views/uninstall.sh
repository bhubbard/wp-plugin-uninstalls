#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_post_views_wp_api_key'
wp option delete 'jetpack_post_views_settings'
wp option delete 'jetpack-post-views_version'
wp option delete 'jetpack_post_views_stats_has_run'
wp option delete 'jetpack_post_views'

# Clear Cron Jobs
wp cron event delete 'jetpack_post_views_scheduled_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jetpack-post-views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jetpack-post-views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jetpack-post-views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jetpack-post-views'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'jetpack-post-views-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'jetpack-post-views-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'jetpack-post-views-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'jetpack-post-views-%'"
