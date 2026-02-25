#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rsscloud_hub_notifications'

# Clear Cron Jobs
wp cron event delete 'rsscloud_send_post_notifications_action'

