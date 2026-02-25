#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_adposts_sizes'
wp option delete 'wp_adposts_posts_ad_enabled'
wp option delete 'wp_adposts_posts_ad_location'
wp option delete 'wp_adposts_posts_ad_position'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_view_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_view_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_view_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_view_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_click_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_click_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_click_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_click_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ad_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ad_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ad_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ad_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ads_sizes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ads_sizes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ads_sizes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ads_sizes'"
