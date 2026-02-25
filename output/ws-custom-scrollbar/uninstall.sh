#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ws_custom_scrollbar_show'
wp option delete 'ws_custom_scrollbar_width'
wp option delete 'ws_custom_scrollbar_bgcolor'
wp option delete 'ws_custom_scrollbar_border_color'
wp option delete 'ws_custom_scrollbar_border_radius'
wp option delete 'ws_custom_scrollbar_speed'
wp option delete 'ws_custom_scrollbar_opacity'
wp option delete 'ws_custom_scrollbar_autohide'
wp option delete 'ws_custom_scrollbar_hidecursordelay'

