#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vrbtm_search_container'
wp option delete 'vrbtm_highlight_parent'
wp option delete 'vrbtm_allow_images'
wp option delete 'vrbtm_animated'
wp option delete 'vrbtm_animation_speed'
wp option delete 'vrbtm_scrolling_offset'
wp option delete 'vrbtm_added_class'
wp option delete 'vrbtm_highlighted_class'
wp option delete 'vrbtm_highlighted_color'
wp option delete 'vrbtm_selected_class'
wp option delete 'vrbtm_button_class'
wp option delete 'vrbtm_bitly_token'

