#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tp_scroll_top_option_enable'
wp option delete 'tp_scroll_top_visibility_fade_speed'
wp option delete 'tp_scroll_top_scroll_fade_speed'
wp option delete 'tp_scroll_top_scroll_position'
wp option delete 'tp_scroll_top_scrollbg'
wp option delete 'tp_scroll_top_scrollbg_hover'
wp option delete 'tp_scroll_top_scrollradious'
wp option delete 'tp_scroll_top_visibility_trigger'

