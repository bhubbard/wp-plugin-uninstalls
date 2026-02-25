#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'underminer_traffic_today_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'underminer_traffic_month_%'"
wp option delete 'underminer_traffic_all_time'

# Clear Cron Jobs
wp cron event delete 'underminer_traffic_cron'

