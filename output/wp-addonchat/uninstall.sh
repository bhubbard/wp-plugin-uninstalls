#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'addonchat_room_id'
wp option delete 'addonchat_use_ras'
wp option delete 'addonchat_enable_guest'
wp option delete 'addonchat_default_height'
wp option delete 'addonchat_default_width'
wp option delete 'addonchat_display_newwindow'
wp option delete 'addonchat_server_id'
wp option delete 'addonchat_password'

