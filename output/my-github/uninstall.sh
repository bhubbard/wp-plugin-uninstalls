#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'my_github_details'
wp option delete '_my_github_installed'
wp option delete '_my_github_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'admin_my_github_details'
wp transient delete 'my_github_root'
wp transient delete 'my_github_details_cd73a2ae7d0fce9f22d1be0662f2ed40'
wp transient delete 'my_github_all_events'

# Clear Cron Jobs

