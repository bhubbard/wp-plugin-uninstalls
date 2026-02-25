#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'safelayout_icons_social_options'
wp option delete 'safelayout_icons_options_rate'
wp option delete 'safelayout_icons_options_upgrade'
wp option delete 'safelayout_icons_packs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'safelayout_menu_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'safelayout_menu_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'safelayout_menu_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'safelayout_menu_icon'"
