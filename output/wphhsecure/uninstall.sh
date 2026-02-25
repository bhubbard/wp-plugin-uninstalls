#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wphhsecure_excluded_folders'
wp option delete 'wphhsecure_processed_batches'
wp option delete 'wphhsecure_total_batches'
wp option delete 'wphhsecure_site_lock_status'
wp option delete 'wphhsecure_site_failed_files'
wp option delete 'wphhsecure_custom_login_path'
wp option delete 'wphhsecure_progress'

# Clear Cron Jobs
wp cron event delete 'wphhsecure_process_files'

