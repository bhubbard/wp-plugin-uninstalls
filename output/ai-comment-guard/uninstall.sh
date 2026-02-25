#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aicog_db_version'
wp option delete 'aicog_settings'
wp option delete 'aicog_version'

# Delete Transients
wp transient delete 'aicog_connection_tested'
wp transient delete 'aicog_last_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_aicog_ai_processed_%' OR option_name LIKE '_site_transient_aicog_ai_processed_%'"

# Clear Cron Jobs
wp cron event delete 'aicog_cleanup'
wp cron event delete 'aicog_daily_stats'

