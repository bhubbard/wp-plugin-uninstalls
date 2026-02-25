#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bur_display'
wp option delete 'bur_ranks'
wp option delete 'bur_badges'
wp option delete 'bur_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'force_user_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'force_user_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'force_user_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'force_user_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bur_badges'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bur_badges'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bur_badges'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bur_badges'"
