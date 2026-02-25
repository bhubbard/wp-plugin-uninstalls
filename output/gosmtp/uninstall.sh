#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gosmtp_pro_version'
wp option delete 'gosmtp_version'
wp option delete 'gosmtp_options'
wp option delete 'softaculous_plugin_update_notice'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'gosmtp_log_retention_cron'
wp cron event delete 'gosmtp_weekly_email_reports_cron'

