#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmpl_badge_activate_msg'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newbadge_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newbadge_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newbadge_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newbadge_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newbadge_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newbadge_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newbadge_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newbadge_color'"
