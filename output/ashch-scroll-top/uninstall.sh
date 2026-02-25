#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'scrltop_enable_button'
wp option delete 'scrltop_button_color'
wp option delete 'scrltop_arrow_color'
wp option delete 'scrltop_arrow'
wp option delete 'scrltop_form_button'
wp option delete 'scrltop_start_scrolling'
wp option delete 'scrltop_position_button'
wp option delete 'scrltop_position_button_left'
wp option delete 'scrltop_position_button_right'
wp option delete 'scrltop_position_button_bottom'

