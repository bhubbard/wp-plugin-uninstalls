#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jes_events'
wp option delete 'jes-events'
wp option delete 'jes-theme-version'
wp option delete 'jes-events-db-version'
wp option delete 'site_name'

# Clear Cron Jobs
wp cron event delete 'jes_events_notification_cron_hook'

