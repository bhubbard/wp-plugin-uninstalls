#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'top_tweetmeme_db_version'

# Clear Cron Jobs
wp cron event delete 'top_tweetmeme_update_event'

