#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qwall_avc_%'"
wp option delete 'qwall_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'qwall_%'"

# Clear Cron Jobs
wp cron event delete 'qwall_purge_logs'

