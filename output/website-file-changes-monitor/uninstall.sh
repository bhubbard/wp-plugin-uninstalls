#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%redirect_after_activation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active_version'"
wp option delete 'wfcm_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_scan_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%scanner_running'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%initial_setup_needed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%scan-hour'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%scan-hour-am'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%scan-day'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%event_notification_dismissed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%update_notice_needed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show_update_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%monitor_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_setup_complete'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%active_scan_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%delete-data-enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%permissions_column_created'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plugins_and_themes_history'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%plugins_and_themes_recent_updates'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%max_scan_time'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%dir_runner_started' OR option_name LIKE '_site_transient_%dir_runner_started'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%next_scan_time' OR option_name LIKE '_site_transient_%next_scan_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

