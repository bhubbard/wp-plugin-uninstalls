#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wfd404_%'"
wp option delete 'wfd404_base_index_initialized'
wp option delete 'wfd404_email_enabled'
wp option delete 'wfd404_email_address'
wp option delete 'wfd404_notify_new_urls'

# Clear Cron Jobs
wp cron event delete 'wfd404_daily_scan'

