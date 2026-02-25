#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pts_original_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pts_original_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pts_original_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pts_original_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pts_previous_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pts_previous_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pts_previous_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pts_previous_type'"
