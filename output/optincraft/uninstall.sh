#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'optincraft_lock_queue'
wp option delete 'optincraft_activation_redirect'
wp option delete 'optincraft_activate_time'
wp option delete 'optincraft_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs
wp cron event delete 'optincraft_daily_cron'

