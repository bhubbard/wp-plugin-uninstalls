-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fluentmail-settings', '_fluentmail_last_generated_state', '_fluentsmtp_sub_update', '_fluentsmtp_dismissed_timestamp', '_fluentmail_last_email_digest', '_fsmtp_last_notification_sent', '_fluentsmtp_intended_outlook_info', '_fluent_smtp_notify_settings', 'wp_mail_smtp', 'wp_mail_smtp_mail_key', 'swpsmtp_options', 'swpsmtp_pass_encrypted', 'swpsmtp_enc_key');

