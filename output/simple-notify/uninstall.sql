-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpno_enable_emails_new_user_register', 'simpno_email_template_new_user_register', 'simpno_enable_emails_new_post_publish', 'simpno_email_template_new_post_publish', 'notification_enable_emails_new_user_register', 'notification_email_template_new_user_register', 'notification_enable_emails_new_post_publish', 'notification_email_template_new_post_publish');

