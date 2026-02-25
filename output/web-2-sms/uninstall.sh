#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_interval_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_sms_retry'"
wp option delete 'web2sms_db_version'

# Clear Cron Jobs
wp cron event delete 'web2smsCartNotify'

