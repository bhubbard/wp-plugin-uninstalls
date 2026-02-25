#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tdsc_icon_size'
wp option delete 'tdsc_background_color'
wp option delete 'tdsc_hover_color'
wp option delete 'tdsc_enable_down'
wp option delete 'tdsc_enable_top'
wp option delete 'tdsc_position'
wp option delete 'tdsc_top_button_icon_url'
wp option delete 'tdsc_down_button_icon_url'
wp option delete 'tdsc_ackground_color'

# Delete Transients
wp transient delete 'tdsc-scroll-activation-notice'

