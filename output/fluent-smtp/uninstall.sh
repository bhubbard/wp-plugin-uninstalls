#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fluentmail-settings'
wp option delete '_fluentmail_last_generated_state'
wp option delete '_fluentsmtp_sub_update'
wp option delete '_fluentsmtp_dismissed_timestamp'
wp option delete '_fluentmail_last_email_digest'
wp option delete '_fsmtp_last_notification_sent'
wp option delete '_fluentsmtp_intended_outlook_info'
wp option delete '_fluent_smtp_notify_settings'
wp option delete 'wp_mail_smtp'
wp option delete 'wp_mail_smtp_mail_key'
wp option delete 'swpsmtp_options'
wp option delete 'swpsmtp_pass_encrypted'
wp option delete 'swpsmtp_enc_key'

# Clear Cron Jobs
wp cron event delete 'fluentsmtp_renew_gmail_token'
wp cron event delete 'fluentmail_do_daily_scheduled_tasks'

