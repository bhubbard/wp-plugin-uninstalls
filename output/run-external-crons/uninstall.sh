#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'run_external_cron_settings'
wp option delete 'run_external_cron_last_run'

# Clear Cron Jobs
wp cron event delete 'rec_event'

