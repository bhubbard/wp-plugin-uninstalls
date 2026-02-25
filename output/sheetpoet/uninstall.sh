#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'spgs_settings'
wp option delete 'spgs_version'
wp option delete 'spgs_functions'

# Clear Cron Jobs
wp cron event delete 'spgs_scheduled_tasks'

