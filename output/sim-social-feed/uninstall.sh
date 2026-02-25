#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simsf_token'
wp option delete 'simsf_user_media'
wp option delete 'simsf_access_token'
wp option delete 'simsf_user'
wp option delete 'simsf_update_schedule'
wp option delete 'simsf_notification_email'

# Clear Cron Jobs
wp cron event delete 'sim_social_feed_cron'

