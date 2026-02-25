#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tp_tooltip_speed'
wp option delete 'tp_tooltip_width'
wp option delete 'tp_tooltip_delay'
wp option delete 'tp_tooltip_bgcolor'
wp option delete 'tp_tooltip_color'
wp option delete 'tp_tooltip_position'
wp option delete 'tp_tooltip_display'

