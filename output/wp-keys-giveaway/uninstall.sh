#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sh9_meta_box_textarea'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sh9_meta_box_textarea'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sh9_meta_box_textarea'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sh9_meta_box_textarea'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sh9_meta_box_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sh9_meta_box_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sh9_meta_box_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sh9_meta_box_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sh9_meta_box_iplock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sh9_meta_box_iplock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sh9_meta_box_iplock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sh9_meta_box_iplock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sh9_meta_box_loggedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sh9_meta_box_loggedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sh9_meta_box_loggedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sh9_meta_box_loggedin'"
