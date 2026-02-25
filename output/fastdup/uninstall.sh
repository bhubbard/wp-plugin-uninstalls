#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fastdup_last_check_folders'

# Clear Cron Jobs
wp cron event delete 'njt-fastdup-event'

