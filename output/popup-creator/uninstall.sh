#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ALPHACONNECT_POPUP_VERSION'
wp option delete 'myprefix_image_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_acpc_popup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_acpc_popup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_acpc_popup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_acpc_popup'"
