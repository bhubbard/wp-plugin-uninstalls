#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'op_dashboard_widget_blocks'
wp option delete 'occupancy_plan_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_occupancy_plan_state_%' OR option_name LIKE '_site_transient_occupancy_plan_state_%'"

# Clear Cron Jobs
wp cron event delete 'occupancy_plan_cleanup_job'

