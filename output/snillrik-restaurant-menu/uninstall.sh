#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'snillrik_restaurant_ingredients'
wp option delete 'snillrik_restaurant_cahstype'
wp option delete 'snillrik_restaurant_cahsplace'
wp option delete 'snillrik_restaurant_decimals'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snillrik_restaurant_dishprice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snillrik_restaurant_dishprice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snillrik_restaurant_dishprice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snillrik_restaurant_dishprice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_snillrik_restaurant_dish_ingredients'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_snillrik_restaurant_dish_ingredients'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_snillrik_restaurant_dish_ingredients'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_snillrik_restaurant_dish_ingredients'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_boxes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_boxes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_boxes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_boxes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_selected_boxes_prices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_selected_boxes_prices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_selected_boxes_prices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_selected_boxes_prices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snrest_menu_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snrest_menu_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snrest_menu_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snrest_menu_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snrest_showcategory'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snrest_showcategory'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snrest_showcategory'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snrest_showcategory'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snrest_hideimage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snrest_hideimage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snrest_hideimage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snrest_hideimage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snrest_linktitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snrest_linktitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snrest_linktitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snrest_linktitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snrest_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snrest_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snrest_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snrest_category'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'snrest_orderby'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'snrest_orderby'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'snrest_orderby'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'snrest_orderby'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_footer'"
