#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sliding-panel-options'
wp option delete 'sliding-panel-dashboard-menus'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'support'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'support'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'support'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'support'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'share-scheme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'share-scheme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'share-scheme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'share-scheme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'spread-the-word'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'spread-the-word'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'spread-the-word'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'spread-the-word'"
