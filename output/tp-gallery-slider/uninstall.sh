#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tp_width'
wp option delete 'tp_height'
wp option delete 'tp_select_change'
wp option delete 'tp_display_alt'
wp option delete 'tp_description_position'

