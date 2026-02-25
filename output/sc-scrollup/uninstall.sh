#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scupSettings_icon_size'
wp option delete 'scupSettings_speed'
wp option delete 'scupSettings_width'
wp option delete 'scupSettings_height'
wp option delete 'scupSettings_distance_right'
wp option delete 'scupSettings_distance_bottom'
wp option delete 'scupSettings_background'
wp option delete 'scupSettings_icon_color'
wp option delete 'scupSettings_icon'

