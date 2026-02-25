#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'whisperfollow_db_version'
wp option delete 'whisperfollow_pushsubs'
wp option delete 'whisperfollow_log'
wp option delete 'plugin_error'

# Clear Cron Jobs
wp cron event delete 'whisperfollow_generate_hook'

