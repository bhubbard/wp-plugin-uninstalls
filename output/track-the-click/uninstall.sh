#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_local'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_retain_days'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_exclude_addresses'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_click_counts'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remove_noreferrer'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_track_admins'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_track_users'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp option delete 'track_the_click_license_status'
wp option delete 'track_the_click_exclude_addresses'
wp option delete 'date_format '
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp option delete 'track_the_click_local'
wp option delete 'track_the_click_version'
wp option delete 'track_the_click_click_counts'
wp option delete 'track_the_click_retain_days'
wp option delete 'track_the_click_ga_options'
wp option delete 'track_the_click_remove_noreferrer'
wp option delete 'track_the_click_track_license'
wp option delete 'track_the_click_track_license_status'
wp option delete 'track_the_click_track_admins'
wp option delete 'track_the_click_track_users'
wp option delete 'track_the_click_patterns_1'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'track_the_click_delete_old_data'

