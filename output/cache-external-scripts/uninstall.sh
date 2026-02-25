#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ces_settings'

# Clear Cron Jobs
wp cron event delete 'cache-external-scripts-cron'

