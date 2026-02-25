#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'staff_mgt_staff'
wp option delete 'staff_mgt_order_by'
wp option delete 'staff_mgt_order_by_direction'
wp option delete 'staff_mgt_display_columns'
wp option delete 'staff_mgt_background_color'
wp option delete 'staff_mgt_border_color'
wp option delete 'staff_mgt_font_color'

