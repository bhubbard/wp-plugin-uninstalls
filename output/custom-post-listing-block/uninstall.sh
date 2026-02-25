#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fb_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fb_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fb_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fb_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tw_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tw_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tw_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tw_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'go_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'go_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'go_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'go_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'li_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'li_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'li_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'li_url'"
