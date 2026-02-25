#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wawp_restriction_status_name'
wp option delete 'wawp_addons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wawp_wa_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wawp_wa_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wawp_wa_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wawp_wa_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wawp_user_status_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wawp_user_status_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wawp_user_status_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wawp_user_status_key'"
