#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 's99_wpmon_salt'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 's99_wpmon_schedule_event'

