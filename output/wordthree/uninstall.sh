#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wordthree_metamask_db_version'
wp option delete 'wordthree_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordthree_menu_item_is_login_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordthree_menu_item_is_login_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordthree_menu_item_is_login_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordthree_menu_item_is_login_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wordthree_display_login_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wordthree_display_login_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wordthree_display_login_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wordthree_display_login_button'"
