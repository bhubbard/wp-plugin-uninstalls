#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'access_watch_api_key'
wp option delete 'access_watch_api_key_registered'
wp option delete 'access_watch_site_id'
wp option delete 'access_watch_access_token'
wp option delete 'access_watch_user_email'

# Clear Cron Jobs
wp cron event delete 'access_watch_clean'
wp cron event delete 'access_watch_post_activation'

