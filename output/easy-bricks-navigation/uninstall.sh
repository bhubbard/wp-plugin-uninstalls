#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ebn_auto_generate_installed_bricks_plugin_menuitems'
wp option delete 'ebn_order_by'
wp option delete 'ebn_show_all_in_new_tab'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebn_menuitem_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebn_menuitem_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebn_menuitem_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebn_menuitem_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebn_menuitem_menu_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebn_menuitem_menu_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebn_menuitem_menu_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebn_menuitem_menu_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebn_menuitem_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebn_menuitem_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebn_menuitem_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebn_menuitem_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebn_menuitem_origin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebn_menuitem_origin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebn_menuitem_origin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebn_menuitem_origin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ebn_menuitem_menu_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ebn_menuitem_menu_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ebn_menuitem_menu_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ebn_menuitem_menu_order'"
