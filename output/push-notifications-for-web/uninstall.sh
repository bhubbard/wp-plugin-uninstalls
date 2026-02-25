#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notification_authDomain'
wp option delete 'notification_apiKey'
wp option delete 'notification_projectId'
wp option delete 'notification_storageBucket'
wp option delete 'notification_senderId'
wp option delete 'notification_appId'
wp option delete 'notification_jsonfile'
wp option delete 'notification_server_key'
wp option delete 'wpn_enable_for_post'
wp option delete 'wpn_post_message'
wp option delete 'wpn_post_icon'
wp option delete 'wpn_post_image'

