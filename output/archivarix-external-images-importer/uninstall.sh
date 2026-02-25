#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aeii_options'
wp option delete 'aeii_background_running'
wp option delete 'aeii_scan_results'
wp option delete 'aeii_queue_position'
wp option delete 'aeii_url_cache'
wp option delete 'aeii_archive_error'
wp option delete 'aeii_archive_error_time'
wp option delete 'aeii_archive_429_retries'
wp option delete 'aeii_success_count'
wp option delete 'aeii_cached_count'
wp option delete 'aeii_failed_count'
wp option delete 'aeii_removed_count'
wp option delete 'aeii_placeholder_count'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aeii_idx_%' OR option_name LIKE '_site_transient_aeii_idx_%'"
wp transient delete 'aeii_images_process_process_lock'
wp transient delete 'aeii_images_process_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_completed' OR option_name LIKE '_site_transient_%_completed'"

# Clear Cron Jobs
wp cron event delete 'aeii_background_process'
wp cron event delete 'aeii_images_process_cron'

