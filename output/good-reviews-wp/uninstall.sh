#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grfwp-settings'
wp option delete 'GRFWP_Trial_Happening'
wp option delete 'grfwp-installation-time'
wp option delete 'grfwp-permission-level'
wp option delete 'grfwp-review-ask-time'

# Delete Transients
wp transient delete 'fsp-helper-notice-dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'grfwp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'grfwp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'grfwp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'grfwp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_menu_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_menu_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_menu_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_menu_item_id'"
