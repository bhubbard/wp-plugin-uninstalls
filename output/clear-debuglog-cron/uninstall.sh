#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'debug_cron'

# Clear Cron Jobs
wp cron event delete 'debug_cron_jobs'

