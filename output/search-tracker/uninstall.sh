#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdwpst_search_tracker_telemetry_allowed'
wp option delete 'pdwpst_search_tracker_show_telemetry_prompt'
wp option delete 'search_tracker_show_telemetry_prompt'
wp option delete 'search_tracker_telemetry_allowed'
wp option delete 'pdwpst_search_tracker_delete_on_uninstall'
wp option delete 'pdwpst_user_searches_db_version'

# Clear Cron Jobs
wp cron event delete 'pdwpst_search_tracker_telemetry_cron'
wp cron event delete 'search_tracker_telemetry_cron'

