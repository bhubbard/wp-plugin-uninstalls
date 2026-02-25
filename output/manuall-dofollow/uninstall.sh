#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smudofollow'

# Clear Cron Jobs
wp cron event delete 'smu_task_hook'

