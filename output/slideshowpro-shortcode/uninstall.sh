#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'vcu_option_name'
wp option delete 'vcu_option_width'
wp option delete 'vcu_option_height'
wp option delete 'vcu_option_style'
wp option delete 'vcu_option_content_scale'
wp option delete 'vcu_option_transition'
wp option delete 'vcu_option_preloader'
wp option delete 'vcu_option_auto_playback'
wp option delete 'vcu_option_pan_zoom'
wp option delete 'vcu_option_mouseover_navigation'
wp option delete 'vcu_option_open_gallery'
wp option delete 'vcu_option_auto_start_videos'
wp option delete 'vcu_option_thumbnail_links'

