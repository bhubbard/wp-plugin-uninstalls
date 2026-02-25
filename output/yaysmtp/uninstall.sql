-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Shrief', 'yaysmtp_settings_bk', 'yaysmtp_settings', 'yaysmtp_email_log_settings_bk', 'yaysmtp_email_log_settings', 'yaysmtp_reviewed', 'yaysmtp_debug', 'yaysmtp_debug_fallback', 'yaysmtp_imported_log_plugin_trace_settings', 'easy_wp_smtp', 'wp_mail_smtp', 'smtp_mailer_options', 'wp_smtp_options', 'postman_options', 'yay_smtp_version', 'YAYSMTP_ROOT');

