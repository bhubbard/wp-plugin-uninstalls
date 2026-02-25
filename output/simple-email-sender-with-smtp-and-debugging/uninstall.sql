-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simple_email_sender_smtp_host', 'simple_email_sender_smtp_port', 'simple_email_sender_smtp_username', 'simple_email_sender_smtp_password', 'simple_email_sender_smtp_encryption', 'simple_email_sender_from_email', 'simple_email_sender_debug_mode');

