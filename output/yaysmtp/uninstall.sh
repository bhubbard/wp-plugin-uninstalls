#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'Shrief'
wp option delete 'yaysmtp_settings_bk'
wp option delete 'yaysmtp_settings'
wp option delete 'yaysmtp_email_log_settings_bk'
wp option delete 'yaysmtp_email_log_settings'
wp option delete 'yaysmtp_reviewed'
wp option delete 'yaysmtp_debug'
wp option delete 'yaysmtp_debug_fallback'
wp option delete 'yaysmtp_imported_log_plugin_trace_settings'
wp option delete 'easy_wp_smtp'
wp option delete 'wp_mail_smtp'
wp option delete 'smtp_mailer_options'
wp option delete 'wp_smtp_options'
wp option delete 'postman_options'
wp option delete 'yay_smtp_version'

# Delete Transients
wp transient delete 'YAYSMTP_ROOT'

# Clear Cron Jobs
wp cron event delete 'yaysmtp_delete_email_log_schedule_hook'
wp cron event delete 'yaysmtp_send_email_report_weekly_schedule_hook'
wp cron event delete 'yaysmtp_send_email_report_monthly_schedule_hook'

