#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcpop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcpop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcpop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcpop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grid_cols'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grid_cols'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grid_cols'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grid_cols'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'masonry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'masonry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'masonry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'masonry'"
