#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gecka-submenu-pro-notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_autopopulate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_autopopulate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_autopopulate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_autopopulate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_autopopulate_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_autopopulate_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_autopopulate_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_autopopulate_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_showsub'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_showsub'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_showsub'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_showsub'"
