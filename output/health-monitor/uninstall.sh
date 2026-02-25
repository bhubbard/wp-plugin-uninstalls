#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'health_monitor_options'
wp option delete 'health_monitor_account_settings'
wp option delete 'health_monitor_last_email_sent_time'
wp option delete 'woocommerce_db_version'
wp option delete 'auto_update_plugins'
wp option delete 'health_monitor_version'

# Delete Transients
wp transient delete 'health_monitor_latest_wp_version'
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_health_monitor_latest_plugin_version_%' OR option_name LIKE '_site_transient_health_monitor_latest_plugin_version_%'"
wp transient delete 'health_monitor_latest_curl_version'
wp transient delete 'health_monitor_latest_mysql_version'
wp transient delete 'health_monitor_latest_php_version'
wp transient delete 'health_monitor_db_data_size'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'health_monitor_daily_lighthouse_scores'
wp cron event delete 'health_monitor_hourly_check_email_notification'
wp cron event delete 'health_monitor_cleanup_old_records'

