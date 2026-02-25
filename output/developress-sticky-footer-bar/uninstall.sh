#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_stiky_bar'
wp option delete 'background_bar'
wp option delete 'font_color'
wp option delete 'font_size'
wp option delete 'icon_size'
wp option delete 'font_size_other_label'
wp option delete 'translation_close_link'
wp option delete 'translation_menu_link'
wp option delete 'number_items_first_menu'
wp option delete 'visibility'
wp option delete 'custom_css'
wp option delete 'menu_select'
wp option delete 'display_menu_right_left'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_extra'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_extra'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_extra'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_extra'"
