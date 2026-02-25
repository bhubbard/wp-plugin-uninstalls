#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpps_general_settings'
wp option delete 'bpps_groups_settings'
wp option delete 'bpsp_site_post_settings'
wp option delete 'bpps_friends_settings'
wp option delete 'bpps_members_settings'
wp option delete 'bpps_following_settings'
wp option delete 'bpps_followed_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpgps_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpgps_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpgps_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpgps_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpgps_group_post_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpgps_group_post_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpgps_group_post_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpgps_group_post_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpps_group_post_sticky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpps_group_post_sticky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpps_group_post_sticky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpps_group_post_sticky'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bpps_my_posts_sticky'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bpps_my_posts_sticky'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bpps_my_posts_sticky'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bpps_my_posts_sticky'"
