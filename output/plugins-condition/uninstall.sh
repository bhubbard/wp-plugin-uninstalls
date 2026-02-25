#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plg_cond_notify_interval'
wp option delete 'plg_cond_update_date_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plg_cond_text_%'"

# Clear Cron Jobs
wp cron event delete 'plugins_condition_cron'
wp cron event delete 'plugins_condition_notify_cron'

