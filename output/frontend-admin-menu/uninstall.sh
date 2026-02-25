#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'frontend_admin_menu_mapping_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'frontend_admin_menu_mapping_admin_bar_%'"
wp option delete 'frontend_admin_menu_status'
wp option delete 'frontend_admin_menu_admin_menu_backend'
wp option delete 'frontend_admin_menu_color'
wp option delete 'frontend_admin_menu'
wp option delete 'frontend_admin_menu_admin_bar'

