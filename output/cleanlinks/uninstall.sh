#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cleanlinks_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleanlink_redirect_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleanlink_redirect_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleanlink_redirect_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleanlink_redirect_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleanlink_redirect_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleanlink_redirect_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleanlink_redirect_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleanlink_redirect_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cleanlink_redirect_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cleanlink_redirect_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cleanlink_redirect_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cleanlink_redirect_nofollow'"
