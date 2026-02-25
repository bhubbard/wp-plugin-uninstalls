-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailmoo_smtp_host', 'mailmoo_smtp_port', 'mailmoo_smtp_auth', 'mailmoo_smtp_username', 'mailmoo_smtp_password', 'mailmoo_smtp_encryption', 'mailmoo_from_email', 'mailmoo_from_name', 'mailmoo_reply_to_email', 'mailmoo_reply_to_name', 'mailmoo_enable_logging');

