#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'themepoints_scrollbar_colors'
wp option delete 'themepoints_scrollbar_width'
wp option delete 'themepoints_scrollbar_radius'
wp option delete 'themepoints_scrollbar_border'
wp option delete 'themepoints_scrollbar_speed'
wp option delete 'themepoints_scrollbar_autohide'

