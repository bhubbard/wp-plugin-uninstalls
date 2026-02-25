#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jimmy_branding_option_content'
wp option delete 'jimmy_branding_option_width'
wp option delete 'jimmy_branding_option_width_percents'
wp option delete 'jimmy_branding_option_height_min'
wp option delete 'jimmy_branding_option_height_min_percents'
wp option delete 'jimmy_branding_option_height_max'
wp option delete 'jimmy_branding_option_height_max_percents'
wp option delete 'jimmy_branding_option_res_choice'
wp option delete 'jimmy_branding_option_color_opener'
wp option delete 'jimmy_branding_option_width_opener'
wp option delete 'jimmy_branding_option_opener_choice'
wp option delete 'jimmy_branding_option_webgl_choice'
wp option delete 'jimmy_branding_option_shortcode_choice'

