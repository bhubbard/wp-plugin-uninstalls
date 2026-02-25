-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autormlite_minute', 'autormlite_hour', 'autormlite_day', 'autormlite_month', 'autormlite_weekday', 'autormlite_days_total', 'autormlite_days_before', 'autormlite_load_jquery', 'autormlite_reminder_send_method', 'autormlite_delete_data_on_uninstall', 'autormlite_text_email', 'autormlite_subject_email', 'autormlite_text_sms', 'limoo_selected_gateway', 'limoo_gateway_api_key', 'limoo_gateway_sender', 'autormlite_email_cron_minute', 'autormlite_email_cron_hour', 'autormlite_email_cron_day', 'autormlite_email_cron_month', 'autormlite_email_cron_weekday', 'autormlite_send_method', 'autormlite_last_email_report', 'autormlite_last_sms_report', 'autormlite_reminders_lite_cache');
DELETE FROM wp_options WHERE option_name LIKE 'autormlite_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('phone_number', 'first_purchase', 'last_email_date', 'allow_notifications');
DELETE FROM wp_usermeta WHERE meta_key IN ('phone_number', 'first_purchase', 'last_email_date', 'allow_notifications');
DELETE FROM wp_termmeta WHERE meta_key IN ('phone_number', 'first_purchase', 'last_email_date', 'allow_notifications');
DELETE FROM wp_commentmeta WHERE meta_key IN ('phone_number', 'first_purchase', 'last_email_date', 'allow_notifications');

