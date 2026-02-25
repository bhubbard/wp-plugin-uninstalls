#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cursor_control_custom_defaultcursor_image_upload'
wp option delete 'cursor_control_x_offset'
wp option delete 'cursor_control_y_offset'

