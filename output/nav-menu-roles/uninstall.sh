#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nav_menu_roles_db_version'

# Delete Transients
wp transient delete 'nav_menu_roles_conflicts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nav_menu_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nav_menu_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nav_menu_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nav_menu_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nav_menu_role_display_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nav_menu_role_display_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nav_menu_role_display_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nav_menu_role_display_mode'"
