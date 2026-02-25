#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pro_mail_smtp_active_plugins_list'
wp option delete 'pro_mail_smtp_retention_duration'
wp option delete 'pro_mail_smtp_gmail_access_token'
wp option delete 'pro_mail_smtp_gmail_refresh_token'
wp option delete 'pro_mail_smtp_from_email'
wp option delete 'pro_mail_smtp_from_name'
wp option delete 'pro_mail_smtp_enable_summary'
wp option delete 'pro_mail_smtp_summary_email'
wp option delete 'pro_mail_smtp_summary_frequency'
wp option delete 'pro_mail_smtp_fallback_to_wp_mail'
wp option delete 'wp_mail_smtp'
wp option delete 'swpsmtp_options'
wp option delete 'wp_mail_smtp_mail_key'
wp option delete 'pro_mail_smtp_db_version'
wp option delete 'pro_mail_smtp_import_easysmtp_notice_dismissed'
wp option delete 'pro_mail_smtp_import_wpmail_notice_dismissed'
wp option delete 'pro_mail_smtp_alerts_enabled'
wp option delete 'pro_mail_smtp_alerts_max_per_day'
wp option delete 'pro_mail_smtp_alerts_webhook_timeout'
wp option delete 'pro_mail_smtp_gmail_access_token_data'
wp option delete 'pro_mail_smtp_outlook_access_token'
wp option delete 'pro_mail_smtp_outlook_refresh_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pro_mail_smtp_analytics_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pro_mail_smtp_analytics_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pro_mail_smtp_analytics_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pro_mail_smtp_analytics_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pro_mail_smtp_log_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pro_mail_smtp_log_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pro_mail_smtp_log_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pro_mail_smtp_log_filters'"
