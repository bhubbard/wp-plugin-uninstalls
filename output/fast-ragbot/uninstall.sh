#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ragbot_settings'
wp option delete 'ragbot_db_version'

# Clear Cron Jobs
wp cron event delete 'ragbot_cleanup_sessions'

