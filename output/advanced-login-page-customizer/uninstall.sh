#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'site_logo'
wp option delete 'advanced_login_page_customizer_login_ui_settings'
wp option delete 'advanced_login_page_customizer_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alpc_menu_pointer_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alpc_menu_pointer_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alpc_menu_pointer_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alpc_menu_pointer_dismissed'"
