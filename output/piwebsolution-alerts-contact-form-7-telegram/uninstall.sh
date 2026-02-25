#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pisol_cf7_bot_token'
wp option delete 'pisol_cf7_channels'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pisol_cf7_dont_send_to_telegram'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pisol_cf7_dont_send_to_telegram'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pisol_cf7_dont_send_to_telegram'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pisol_cf7_dont_send_to_telegram'"
