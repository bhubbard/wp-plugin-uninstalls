#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'chatwing_default_%'"
wp option delete 'chatwing_default_app_id_lobby'
wp option delete 'lobby_chatwing_access_token'
wp option delete 'chatwing_default_width_lobby'
wp option delete 'chatwing_default_height_lobby'

