#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pajdm_menu_breakpoint'
wp option delete 'pajdm_menu_top_bottom'
wp option delete 'pajdm_menu_left_right'
wp option delete 'pajdm_menu_dropdown_items'
wp option delete 'pajdm_menu_line_color'
wp option delete 'pajdm_line_thickness'
wp option delete 'pajdm_main_menu_line_position'
wp option delete 'pajdm_dropdown_menu_line_position'
wp option delete 'pajdm_main_menu_line_option'
wp option delete 'pajdm_dropdown_line_option'
wp option delete 'pajdm_options_dropdown_menu_icon'

