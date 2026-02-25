#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'salesmanago_cron'

# Clear Cron Jobs
wp cron event delete 'salesmanago_cron_event'

