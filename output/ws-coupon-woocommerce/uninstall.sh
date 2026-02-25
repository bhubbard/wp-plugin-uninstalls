#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ws_show_popup'
wp option delete 'ws_popup_title'
wp option delete 'ws_hide_after'
wp option delete 'ws_popup_coupon'
wp option delete 'ws_popup_background'
wp option delete 'ws_popup_border_color'
wp option delete 'ws_popup_font_color'

