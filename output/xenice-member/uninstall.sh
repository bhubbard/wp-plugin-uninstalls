#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xenice_member_levels'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xm_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xm_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xm_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xm_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'xm_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'xm_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'xm_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'xm_expire'"
