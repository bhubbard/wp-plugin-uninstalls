#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%facebook_app_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%facebook_app_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%youtube_api_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%stats'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_call_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%locale'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cache_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%cache_unit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%strings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%custom_css'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%logs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%sources'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%timezone'"

# Delete Transients
wp transient delete 'cgusf_api_call_tick'

# Clear Cron Jobs

