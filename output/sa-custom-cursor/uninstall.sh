#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sacursor_activate'
wp option delete 'sacursor_main_color'
wp option delete 'sacursor_image_activate'
wp option delete 'sacursor_second_image'
wp option delete 'sacursor_second_opacity_image'
wp option delete 'sacursor_second_color'
wp option delete 'sacursor_main_width'
wp option delete 'sacursor_main_height'
wp option delete 'sacursor_main_radius'
wp option delete 'sacursor_main_width_hover'
wp option delete 'sacursor_main_height_hover'
wp option delete 'sacursor_second_width'
wp option delete 'sacursor_second_height'
wp option delete 'sacursor_second_radius'
wp option delete 'sacursor_main_opacity'
wp option delete 'sacursor_href_selectors'
wp option delete 'sacursor_second_activate'

