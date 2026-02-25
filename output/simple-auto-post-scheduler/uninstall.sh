#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_scheduler_activated'

# Clear Cron Jobs
wp cron event delete 'post_scheduler_cron_hook'

