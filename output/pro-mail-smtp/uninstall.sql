-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pro_mail_smtp_active_plugins_list', 'pro_mail_smtp_retention_duration', 'pro_mail_smtp_gmail_access_token', 'pro_mail_smtp_gmail_refresh_token', 'pro_mail_smtp_from_email', 'pro_mail_smtp_from_name', 'pro_mail_smtp_enable_summary', 'pro_mail_smtp_summary_email', 'pro_mail_smtp_summary_frequency', 'pro_mail_smtp_fallback_to_wp_mail', 'wp_mail_smtp', 'swpsmtp_options', 'wp_mail_smtp_mail_key', 'pro_mail_smtp_db_version', 'pro_mail_smtp_import_easysmtp_notice_dismissed', 'pro_mail_smtp_import_wpmail_notice_dismissed', 'pro_mail_smtp_alerts_enabled', 'pro_mail_smtp_alerts_max_per_day', 'pro_mail_smtp_alerts_webhook_timeout', 'pro_mail_smtp_gmail_access_token_data', 'pro_mail_smtp_outlook_access_token', 'pro_mail_smtp_outlook_refresh_token');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pro_mail_smtp_analytics_filters', 'pro_mail_smtp_log_filters');
DELETE FROM wp_usermeta WHERE meta_key IN ('pro_mail_smtp_analytics_filters', 'pro_mail_smtp_log_filters');
DELETE FROM wp_termmeta WHERE meta_key IN ('pro_mail_smtp_analytics_filters', 'pro_mail_smtp_log_filters');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pro_mail_smtp_analytics_filters', 'pro_mail_smtp_log_filters');

