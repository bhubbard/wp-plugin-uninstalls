#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'foodlist_demo_data_ids'
wp option delete 'foodlist_first_start'
wp option delete 'foodlist_last_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_menu_section_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_menu_section_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_menu_section_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_menu_section_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_menu_section_multi_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_menu_section_multi_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_menu_section_multi_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_menu_section_multi_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_menu_sections_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_menu_sections_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_menu_sections_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_menu_sections_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_menu_item_multi_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_menu_item_multi_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_menu_item_multi_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_menu_item_multi_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_menu_items_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_menu_items_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_menu_items_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_menu_items_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_price_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_price_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_price_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_price_data'"
