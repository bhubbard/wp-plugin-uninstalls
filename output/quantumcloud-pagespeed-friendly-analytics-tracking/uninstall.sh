#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'qcanlytics_google_analytics_id'
wp option delete 'qcanlytics_exclude_users'
wp option delete 'qcanlytics_disable_tracking'
wp option delete 'qcanlytics_page_speed'

