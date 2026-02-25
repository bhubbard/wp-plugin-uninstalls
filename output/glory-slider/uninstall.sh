#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glory_slider_images'
wp option delete 'glory_slider_speed'
wp option delete 'glory_slider_interval'
wp option delete 'glory_slider_transition_effect'
wp option delete 'glory_slider_duration'
wp option delete 'glory_slider_layout'
wp option delete 'glory_slider_aspect_ratio'
wp option delete 'glory_slider_custom_width'
wp option delete 'glory_slider_custom_height'
wp option delete 'glory_slider_show_indicators'
wp option delete 'glory_slider_image_fit'

