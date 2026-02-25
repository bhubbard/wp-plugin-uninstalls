#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'
wp option delete 'wpmm_rating_notice_remove'
wp option delete 'wpmm_options'
wp option delete 'WPMM_VER'
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_regular_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sale_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmm_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmm_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmm_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmm_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpmm_nav_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpmm_nav_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpmm_nav_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpmm_nav_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'metaboxhidden_nav-menus'"
