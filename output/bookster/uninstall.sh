#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_bookster_performance_report_%' OR option_name LIKE '_site_transient_bookster_performance_report_%'"
wp transient delete 'bookster_leaderboard_services'
wp transient delete 'bookster_leaderboard_agents'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_locked' OR option_name LIKE '_site_transient_%_process_locked'"

# Clear Cron Jobs

