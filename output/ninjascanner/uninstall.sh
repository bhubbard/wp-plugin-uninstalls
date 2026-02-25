#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nscan_options'

# Delete Transients
wp transient delete 'doing_cron'
wp transient delete 'nscan_ajax_start'
wp transient delete 'nscan_temp_sigs'

# Clear Cron Jobs
wp cron event delete 'wp_ajax_nopriv_nscan_fork'
wp cron event delete 'nscan_garbage_collector'
wp cron event delete 'nscan_scheduled_scan'

