#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'cf7_mch_%'"
wp option delete 'chimpmatic_license_status'
wp option delete 'chimpmatic-update'
wp option delete 'cmatic_log_on'
wp option delete 'cmatic_do_activation_redirect'
wp option delete 'cmatic_news_retry_count'
wp option delete 'csyncr_last_weekly_run'
wp option delete 'mc4wp'
wp option delete 'yikes-mc-api-key'
wp option delete 'yikes-easy-mailchimp-extender-api-key'
wp option delete 'mailchimp-woocommerce'
wp option delete 'mc4wp_top_bar'
wp option delete 'chimpmatic_license_activation'
wp option delete 'cmatic_license_instance'
wp option delete '_site_transient_update_plugins'
wp option delete 'auto_update_core'
wp option delete 'active_sitewide_plugins'
wp option delete 'auto_update_plugins'
wp option delete 'cmatic'
wp option delete 'mce_conten_panel_welcome'
wp option delete 'mce_loyalty'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'cmatic_weekly_telemetry'
wp cron event delete 'cmatic_metrics_heartbeat'
wp cron event delete 'cmatic_daily_cron'
wp cron event delete 'csyncr_weekly_telemetry'
wp cron event delete 'csyncr_metrics_heartbeat'

