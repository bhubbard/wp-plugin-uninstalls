#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chmu_station'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'chmu_show_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'chmu_legend_%'"
wp option delete 'chmu_data'
wp option delete 'chmu_last_update'

# Clear Cron Jobs
wp cron event delete 'chmu_refresh_data'

