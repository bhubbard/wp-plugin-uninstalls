#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'music_press_member_page_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'music_press_member_cover'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'music_press_member_cover'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'music_press_member_cover'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'music_press_member_cover'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'music_press_member_img'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'music_press_member_img'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'music_press_member_img'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'music_press_member_img'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_follower'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_follower'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_follower'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_follower'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_following'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_following'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_following'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_following'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'music_press_member_basic_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'music_press_member_basic_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'music_press_member_basic_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'music_press_member_basic_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'music_press_member_contacts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'music_press_member_contacts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'music_press_member_contacts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'music_press_member_contacts'"
