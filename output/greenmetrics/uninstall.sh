#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'greenmetrics_settings'
wp option delete 'greenmetrics_db_error'
wp option delete 'greenmetrics_aggregated_db_error'
wp option delete 'greenmetrics_version'
wp option delete 'greenmetrics_all_cache_last_update'
wp option delete 'greenmetrics_table_columns'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_greenmetrics_table_exists_%' OR option_name LIKE '_site_transient_greenmetrics_table_exists_%'"

# Clear Cron Jobs
wp cron event delete 'greenmetrics_cleanup_charts'
wp cron event delete 'greenmetrics_data_management'
wp cron event delete 'greenmetrics_send_email_report'
wp cron event delete 'greenmetrics_daily_cache_refresh'

