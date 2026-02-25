#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dreamcore_monitor_api_key'
wp option delete 'dreamcore_monitor_site_id'
wp option delete 'dreamcore_monitor_enable_logging'
wp option delete 'dreamcore_monitor_log_retention'
wp option delete 'dreamcore_monitor_enable_api'
wp option delete 'dreamcore_monitor_enable_geolocation'
wp option delete 'dreamcore_monitor_custom_login_url'
wp option delete 'active_sitewide_plugins'

# Clear Cron Jobs
wp cron event delete 'dreamcore_monitor_verify_api_key_daily'

