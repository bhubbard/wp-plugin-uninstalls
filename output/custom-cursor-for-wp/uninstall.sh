#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'status_ccwp'
wp option delete 'cursor_type_ccwp'
wp option delete 'ccwp_cursor_color'
wp option delete 'ccwp_show_default_cursor'
wp option delete 'ccwp_cursor_size'
wp option delete 'ccwp_front_cursor_type'
wp option delete 'cursor-image-url'

