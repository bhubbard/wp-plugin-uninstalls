#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sac_logout_text'
wp option delete 'sac_locked_text'
wp option delete 'sac_hide_menus'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sac_locked'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sac_locked'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sac_locked'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sac_locked'"
