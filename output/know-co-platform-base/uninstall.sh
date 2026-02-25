#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'know--settings-group'
wp option delete 'know__server_url'
wp option delete 'know__api_key'
wp option delete 'know__api_secret'

# Clear Cron Jobs
wp cron event delete 'know_platform__cleanup_cookies'

