#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fluency_login_style'
wp option delete 'fluency_login_logo'
wp option delete 'fluency_login_link'
wp option delete 'fluency_menu_logo'
wp option delete 'fluency_hidden_menu_logo'
wp option delete 'fluency_menu_width'
wp option delete 'fluency_menu_position'
wp option delete 'fluency_menu_icons'
wp option delete 'fluency_click_menus'
wp option delete 'fluency_hot_keys'
wp option delete 'fluency_custom_color'
wp option delete 'fluency_admin_drop_down'
wp option delete 'fluency_hide_menu'

