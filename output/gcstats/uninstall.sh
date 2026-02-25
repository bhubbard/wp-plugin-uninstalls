#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gcStats_waypoints'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gcStats_options'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%gcStats_error_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gcstats_db_version_%'"
wp option delete 'widget_gcStatsWidget'

