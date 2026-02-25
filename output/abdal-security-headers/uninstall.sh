#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ash_options'

# Clear Cron Jobs
wp cron event delete 'ash_scheduled_tasks'

