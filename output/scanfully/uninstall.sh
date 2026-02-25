#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%is_connected'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%site_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%refresh_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%expires'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%last_used'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%date_connected'"

# Delete Transients
wp transient delete 'scanfully_connect_state'

# Clear Cron Jobs
wp cron event delete 'scanfully_daily'
wp cron event delete 'scanfully_twice_daily'

