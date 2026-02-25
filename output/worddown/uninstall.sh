#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'modularity-options'
wp option delete 'worddown_last_export'
wp option delete 'worddown_settings'
wp option delete 'worddown_current_export_id'
wp option delete 'worddown_export_completed_flag'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'worddown_export_status_%'"

# Clear Cron Jobs
wp cron event delete 'worddown_export_cron'
wp cron event delete 'worddown_process_export_chunk'

