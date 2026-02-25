#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sharing_plus_review_dismiss'
wp option delete 'sharing_plus_active_time'
wp option delete 'run_sharing_plus_update_routine_2'
wp option delete 'sharing_plus_networks'
wp option delete 'sharing_plus_icons_order'
wp option delete 'sharing_plus_settings'
wp option delete 'sharing_plus_inline'
wp option delete 'sharing_plus_positions'
wp option delete 'sharing_plus_themes'
wp option delete 'sharing_plus_extra'
wp option delete 'sharing_plus_not_exist_post_old_counts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_counts'"
wp option delete 'sharing_plus_not_exist_post_total_counts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sharing_plus_follow_twitter_token'
wp option delete 'sharing_plus_sidebar'
wp option delete 'sharing_plus_advanced'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"

# Delete Transients
wp transient delete 'sharing_plus_follow_facebook_counter'
wp transient delete 'sharing_plus_follow_twitter_counter'
wp transient delete 'sharing_plus_follow_google_counter'
wp transient delete 'sharing_plus_follow_youtube_counter'
wp transient delete 'sharing_plus_follow_pinterest_counter'
wp transient delete 'sharing_plus_follow_instagram_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharing_plus_cache_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharing_plus_cache_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharing_plus_cache_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharing_plus_cache_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharing_plus_old_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharing_plus_old_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharing_plus_old_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharing_plus_old_counts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_counts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharing_plus_total_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharing_plus_total_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharing_plus_total_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharing_plus_total_counts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sharing_plus_fbshare_counts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sharing_plus_fbshare_counts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sharing_plus_fbshare_counts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sharing_plus_fbshare_counts'"
