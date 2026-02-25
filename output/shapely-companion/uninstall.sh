#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'shapely_imported_demo'
wp option delete 'jetpack_portfolio'
wp option delete 'jetpack_testimonial'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_extra'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_widget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_widget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_widget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_widget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'shapely_companion_portfolio_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'shapely_companion_portfolio_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'shapely_companion_portfolio_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'shapely_companion_portfolio_link'"
