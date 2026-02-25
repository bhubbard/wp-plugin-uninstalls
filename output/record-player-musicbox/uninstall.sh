#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'musicbox_only_homepage'
wp option delete 'musicbox_music_url'
wp option delete 'musicbox_custom_icon'
wp option delete 'musicbox_width'
wp option delete 'musicbox_height'
wp option delete 'musicbox_position_left'
wp option delete 'musicbox_position_bottom'
wp option delete 'musicbox_enable_autoplay'
wp option delete 'musicbox_disable_hours'
wp option delete 'musicbox_disable_progress_memory'
wp option delete 'musicbox_disable_mobile_autoplay'

