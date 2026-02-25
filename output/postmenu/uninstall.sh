#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postmenu_options'
wp option delete 'postmenu_version'
wp option delete 'nav_menu_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lp_nav_menu_roles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lp_nav_menu_roles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lp_nav_menu_roles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lp_nav_menu_roles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
