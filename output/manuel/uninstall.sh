#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'manuel_cron_interval'

# Clear Cron Jobs
wp cron event delete 'manuel_cron_event'

