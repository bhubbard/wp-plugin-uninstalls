#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'wpfts_used_mt'

# Clear Cron Jobs
wp cron event delete 'wpfts_indexer_event'
wp cron event delete 'wpfts_log_clean'

