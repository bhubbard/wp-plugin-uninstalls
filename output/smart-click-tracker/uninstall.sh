#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smarcltr_options'
wp option delete 'smarcltr_db_version'

# Delete Transients
wp transient delete 'smarcltr_all_trackers'
wp transient delete 'smarcltr_dashboard_stats'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_smarcltr_tracker_stats_%' OR option_name LIKE '_site_transient_smarcltr_tracker_stats_%'"

# Clear Cron Jobs
wp cron event delete 'smarcltr_cleanup'

