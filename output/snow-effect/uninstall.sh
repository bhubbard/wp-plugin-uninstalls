#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmse_enable_setting'
wp option delete 'gmse_flakes_number'
wp option delete 'gmse_select_weather'
wp option delete 'gmse_make'
wp option delete 'gmse_flake_icon_type'
wp option delete 'gmse_flake_image_type'
wp option delete 'gmse_minimum_size'
wp option delete 'gmse_maximum_size'
wp option delete 'gmse_minimum_falling'
wp option delete 'gmse_maximum_falling'
wp option delete 'gmse_flakes_shadow'
wp option delete 'gmse_icon_color'

