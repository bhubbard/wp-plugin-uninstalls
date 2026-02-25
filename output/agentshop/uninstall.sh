#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'agentshop_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"

# Delete Transients
wp transient delete 'agentshop_activated'
wp transient delete 'agentshop_oauth_state'
wp transient delete 'agentshop_sync_check'
wp transient delete 'agentshop_wp_creds_attempted'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%standard' OR option_name LIKE '_site_transient_%standard'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%full' OR option_name LIKE '_site_transient_%full'"

# Clear Cron Jobs
wp cron event delete 'agentshop_daily_sync'
wp cron event delete 'agentshop_cleanup_transients'

