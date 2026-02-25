#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'signups_cron_settings'

# Clear Cron Jobs
wp cron event delete 'signups_cron_event_hook'

