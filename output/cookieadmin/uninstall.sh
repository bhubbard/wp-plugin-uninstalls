#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookieadmin_version'
wp option delete 'cookieadmin_law'
wp option delete 'cookieadmin_consent_settings'
wp option delete 'cookieadmin_pro_scanner'
wp option delete 'cookieadmin_scan'
wp option delete 'cookieadmin_first_scan'
wp option delete 'cookieadmin_settings'
wp option delete 'cookieadmin_consent_purge'
wp option delete 'softaculous_plugin_update_notice'

# Delete Transients
wp transient delete 'cookieadmin_auto_scan_in_progress'
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'cookieadmin_run_auto_scan_batch'
wp cron event delete 'cookieadmin_daily_consent_log_pruning'
wp cron event delete 'cookieadmin_run_auto_cookie_scan'

