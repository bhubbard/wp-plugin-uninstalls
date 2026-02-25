#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'up_profile_page_title'
wp option delete 'up_profile_page_name'
wp option delete 'up_profile_page_id'
wp option delete 'up_profile_stats'
wp option delete 'up_profile_stat_names'
wp option delete 'up_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_user_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'up_profile_page_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'up_profile_page_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'up_profile_page_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'up_profile_page_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'yim'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jabber'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jabber'"
