#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mdemch_pro_settings'

# Delete Transients
wp transient delete 'mdemch_scan_progress'
wp transient delete 'mdemch_scan_in_progress'

# Clear Cron Jobs
wp cron event delete 'mdemch_run_scan'
wp cron event delete 'mdemch_process_chunk_v2'

