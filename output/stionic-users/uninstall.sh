#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nsl_facebook'
wp option delete 'nextend_fb_connect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_profile_picture'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_profile_picture'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_profile_picture'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_profile_picture'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_user_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_user_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_user_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_user_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_wp_user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%user_avatar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stionic_jwt_accept'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stionic_jwt_accept'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stionic_jwt_accept'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stionic_jwt_accept'"
