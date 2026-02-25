#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emaz_total_files'
wp option delete 'emaz_processed_files'
wp option delete 'emaz_progress'
wp option delete 'emaz_current_file'
wp option delete 'emaz_zip_time'

# Clear Cron Jobs
wp cron event delete 'emaz_cleanup_expired_zips'

