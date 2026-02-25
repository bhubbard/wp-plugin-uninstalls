#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_flyout_menu_menu_button_style_choice'
wp option delete '_flyout_menu_button_menu_style'
wp option delete '_flyout_menu_custom_menu_label'
wp option delete '_flyout_menu_button_menu_position_screen'
wp option delete '_flyout_menu_btn_icon_pos'
wp option delete 'carbon_custom_sidebars'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
