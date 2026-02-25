#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'comfortsmtp_version'
wp option delete 'comfortsmtp_testmsg'
wp option delete 'comfortsmtp_dashboard_widget'

# Delete Transients
wp transient delete 'comfortsmtp_upgraded_notice'
wp transient delete 'comfortsmtp_activated_notice'
wp transient delete 'comfortsmtp_resend_filter_mail_content_type'

# Clear Cron Jobs
wp cron event delete 'cbxwpemaillogger_daily_event'

