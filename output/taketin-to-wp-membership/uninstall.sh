#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmp-finish-setup'
wp option delete 'tmp-settings'
wp option delete 'taketin-mp-messages'
wp option delete 'tmp-use-tickets'
wp option delete 'tmp-messages'
wp option delete 'tmp-db-version'
wp option delete 'tmp_use_tickets'
wp option delete 'tmp2db_db_version'
wp option delete 'tmp2wp_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nav_menu_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nav_menu_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nav_menu_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nav_menu_exclude'"
