#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jal_db_version'
wp option delete 'smart_links_submenu_page'
wp option delete 'Smartlink_postorder_control'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Smartlink_postorder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Smartlink_postorder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Smartlink_postorder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Smartlink_postorder'"
