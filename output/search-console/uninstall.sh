#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'search_console'
wp option delete 'serach_console_version'
wp option delete 'search_console_token'
wp option delete 'searchconsole_token'
wp option delete 'search_console_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Clear Cron Jobs

