#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'storez_media_upload_ids'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themefarmer_menu_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themefarmer_menu_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themefarmer_menu_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themefarmer_menu_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themefarmer_menu_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themefarmer_menu_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themefarmer_menu_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themefarmer_menu_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
