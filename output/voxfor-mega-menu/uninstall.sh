#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'voxfor_mega_menu_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_mega_menu_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_mega_menu_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_mega_menu_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_mega_menu_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_mega_menu_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_mega_menu_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_mega_menu_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_mega_menu_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_mega_menu_columns'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_mega_menu_columns'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_mega_menu_columns'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_mega_menu_columns'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_mega_menu_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_mega_menu_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_mega_menu_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_mega_menu_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_mega_menu_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_mega_menu_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_mega_menu_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_mega_menu_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_mega_menu_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_mega_menu_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_mega_menu_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_mega_menu_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_voxfor_mega_menu_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_voxfor_mega_menu_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_voxfor_mega_menu_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_voxfor_mega_menu_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'voxfor_menu_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'voxfor_menu_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'voxfor_menu_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'voxfor_menu_data'"
