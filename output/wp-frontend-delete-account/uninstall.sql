-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'wpfda_enable_feedback_email', 'wpfda_redirect_url', 'wpfda_button_label', 'wpfda_security', 'wpfda_security_custom_captcha_question', 'wpfda_security_custom_captcha_answer', 'wpfda_security_password_text', 'wpfda_title', 'wpfda_attribute', 'wpfda_delete_comments', 'wpfda_upgrade_notice_dismissed', 'wpfda_enable_admin_email', 'wpfda_email_receipent', 'wpfda_admin_email_subject', 'wpfda_admin_email_message', 'wpfda_enable_user_email', 'wpfda_user_email_subject', 'wpfda_user_email_message', 'wpfda_feedback_email_receipent', 'wpfda_feedback_email_subject', 'wpfda_feedback_email_message', 'wpfda_enable_summary_email', 'wpfda_summary_email_receipent', 'wpfda_summary_email_subject', 'wpfda_summary_email_message', 'wpfda_deleted_users_date', 'rewrite_rules', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_email_message';
DELETE FROM wp_options WHERE option_name LIKE '%_email';

