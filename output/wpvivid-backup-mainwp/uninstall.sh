#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpvivid_custom_select_website_size_ex'
wp option delete 'wpvivid_remote_backups_lock'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'medium_large_size_w'
wp option delete 'medium_large_size_h'
wp option delete 'mainwp_primaryBackup'
wp option delete 'mainwp_wpvivid_backups_db_version'

# Clear Cron Jobs
wp cron event delete 'mwp_wpvivid_check_version_event'
wp cron event delete 'mwp_wpvivid_refresh_latest_pro_version_event'

