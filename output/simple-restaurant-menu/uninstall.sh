#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'srm_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'srm_menu_item_id_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'srm_menu_item_id_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'srm_menu_item_id_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'srm_menu_item_id_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'srm_menu_item_order_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'srm_menu_item_order_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'srm_menu_item_order_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'srm_menu_item_order_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'srm_menu_item_price_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'srm_menu_item_price_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'srm_menu_item_price_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'srm_menu_item_price_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'srm_menu_title_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'srm_menu_title_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'srm_menu_title_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'srm_menu_title_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'srm_menu_columns_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'srm_menu_columns_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'srm_menu_columns_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'srm_menu_columns_meta'"
