#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'popup_window_width'
wp option delete 'popup_window_height'
wp option delete 'popup_window_top'
wp option delete 'popup_window_left'
wp option delete 'popup_scrollbar'
wp option delete 'popup_window_toolbar'
wp option delete 'popup_window_location'

