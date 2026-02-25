#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bt_bots_retention_days'
wp option delete 'bt_bots_filter_enabled'
wp option delete 'bt_bots_filter_mode'
wp option delete 'bt_bots_filter_source'
wp option delete 'bt_bots_filter_selected_bots'
wp option delete 'bt_bots_filter_custom_names'
wp option delete 'bt_bots_tracker_db_version'

# Clear Cron Jobs
wp cron event delete 'bt_bots_tracker_cleanup_event'

