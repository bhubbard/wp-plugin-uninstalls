#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'abdfw_page_cleanup_schedule'

# Clear Cron Jobs
wp cron event delete 'abdfw_run_scheduled_page_cleanup'

