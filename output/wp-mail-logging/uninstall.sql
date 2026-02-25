-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_mail_logging_activated_time', 'wp_mail_logging_user_feedback_notice', 'wp_mail_logging_db_version', 'wpml_settings', 'wp_mail_smtp_source', 'wp_mail_smtp_activation_prevent_redirect');

