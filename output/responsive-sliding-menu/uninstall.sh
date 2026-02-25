#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rsm_chosen_menu'
wp option delete 'rsm_responsive_width'
wp option delete 'rsm_main_menu_transform'
wp option delete 'rsm_main_menu_size'
wp option delete 'rsm_main_menu_color'
wp option delete 'rsm_hover_menu_color'
wp option delete 'rsm_burger_menu_size'
wp option delete 'rsm_burger_menu_background'
wp option delete 'rsm_main_burger_color'
wp option delete 'rsm_hover_burger_color'
wp option delete 'rsm_burger_menu_color'
wp option delete 'rsm_burger_icon'

