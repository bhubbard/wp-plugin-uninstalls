#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_to_top_bg_color'
wp option delete 'wp_to_top_fg_color'
wp option delete 'wp_to_top_scroll_duration'
wp option delete 'wp_to_top_icon_type'
wp option delete 'wp_to_top_icon_size'
wp option delete 'wp_to_top_icon_location'

