#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'pfcv_run_daily'

