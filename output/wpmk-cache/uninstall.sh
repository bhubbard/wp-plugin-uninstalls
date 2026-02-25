#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPCache'

# Clear Cron Jobs
wp cron event delete 'wp_cache'

