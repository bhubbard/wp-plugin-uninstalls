#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%about_text'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortlink_target_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortlink_target_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortlink_target_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortlink_target_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortlink_redirect_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortlink_redirect_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortlink_redirect_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortlink_redirect_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shortlink_hits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shortlink_hits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shortlink_hits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shortlink_hits'"
