#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'github_api_key'
wp option delete 'github_repos'
wp option delete 'github_users'

# Clear Cron Jobs
wp cron event delete 'ossc_daily_event'

