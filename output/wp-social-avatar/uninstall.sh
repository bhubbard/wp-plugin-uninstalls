#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_avatar_capability'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_avatar_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_avatar_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_avatar_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_avatar_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_fb_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_fb_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_fb_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_fb_profile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_gplus_profile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_gplus_profile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_gplus_profile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_gplus_profile'"
