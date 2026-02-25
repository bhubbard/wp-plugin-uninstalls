#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'html_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'html_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'html_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'html_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'head_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'head_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'head_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'head_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'body_tracking_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'body_tracking_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'body_tracking_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'body_tracking_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'keywords'"
