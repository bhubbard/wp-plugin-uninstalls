#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpu-settings'
wp option delete 'wpu-enabled'
wp option delete 'wpu-last-run'
wp option delete 'wpu-version'
wp option delete 'wpu-new-install'
wp option delete 'wpu_set_forum'
wp option delete 'wpu_enabled'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpu_posttype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpu_posttype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpu_posttype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpu_posttype'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpu_future_xpost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpu_future_xpost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpu_future_xpost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpu_future_xpost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpu_future_ip'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpu_future_ip'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpu_future_ip'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpu_future_ip'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpu_last_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpu_last_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpu_last_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpu_last_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpu-remember-login'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpu-remember-login'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpu-remember-login'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpu-remember-login'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phpbb_userid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phpbb_userid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phpbb_userid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phpbb_userid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phpbb_userLogin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phpbb_userLogin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phpbb_userLogin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phpbb_userLogin'"
