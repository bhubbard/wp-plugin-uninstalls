#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmm4e_menu_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmm4e_menu_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmm4e_menu_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmm4e_menu_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmm4e_menu_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmm4e_menu_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmm4e_menu_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmm4e_menu_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmm4e_menu_item_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmm4e_menu_item_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmm4e_menu_item_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmm4e_menu_item_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cmm4e_menu_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cmm4e_menu_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cmm4e_menu_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cmm4e_menu_meta'"
