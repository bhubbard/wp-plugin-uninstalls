-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cb_mail_sender_email_id', 'cb_mail_sender_id', 'wp_mail_smtp_source', 'wp_mail_smtp_activation_prevent_redirect');

