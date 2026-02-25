#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'compibot_activation_redirect'
wp option delete 'compibot_wp_rocket_notice_closed'
wp option delete 'compibot_updated'

# Delete Transients
wp transient delete 'compibot_wp_rocket_warning'
wp transient delete 'compibot_activation_error'
wp transient delete 'compibot_unread_count'
wp transient delete 'compibot_scan_status'
wp transient delete 'compibot_update_options_status'
wp transient delete 'compibot_updated'

# Clear Cron Jobs
wp cron event delete 'compibot_check_service_cron'
wp cron event delete 'compibot_daily_cms_data_cron'
wp cron event delete 'compibot_daily_scan_cron'

