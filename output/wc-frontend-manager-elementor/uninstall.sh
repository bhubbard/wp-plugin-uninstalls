#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wcfm_chatbox_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcfmmp_profile_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_following_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_following_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_following_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_following_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcfm_followers_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcfm_followers_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcfm_followers_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcfm_followers_list'"
