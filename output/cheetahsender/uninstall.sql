-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mail_from', 'mail_from_name', 'mailer', 'mail_set_return_path', 'smtp_host', 'smtp_port', 'smtp_ssl', 'smtp_auth', 'smtp_user', 'smtp_pass');

