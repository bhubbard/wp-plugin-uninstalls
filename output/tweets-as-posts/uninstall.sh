#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tap_hashtags'
wp option delete 'tap_usernames'
wp option delete 'tap_category'
wp option delete 'tap_user'
wp option delete 'tap_add_news_to_db'
wp option delete 'tap_exceptions'
wp option delete 'tap_version'

# Clear Cron Jobs
wp cron event delete 'tap_hourly_update_action'

