#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ordermanager_options'

# Delete Transients
wp transient delete 'settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ordermanager_menu_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ordermanager_menu_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ordermanager_menu_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ordermanager_menu_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ordermanager_post_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ordermanager_post_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ordermanager_post_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ordermanager_post_order'"
