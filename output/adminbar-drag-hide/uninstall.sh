#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'adh_%'"
wp option delete 'adh_drag'
wp option delete 'adh_position'
wp option delete 'adh_hidebtn'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adh_use_menu_plugin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adh_use_menu_plugin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adh_use_menu_plugin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adh_use_menu_plugin'"
