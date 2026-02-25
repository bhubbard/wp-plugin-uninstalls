-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailer', 'smtp_host', 'mail_set_return_path', 'smtp_ssl', 'smtp_port', 'smtp_auth', 'smtp_user', 'smtp_pass', 'mail_from', 'mail_from_name');
DELETE FROM wp_options WHERE option_name LIKE '%fields';
DELETE FROM wp_options WHERE option_name LIKE '%number_of_fields';
DELETE FROM wp_options WHERE option_name LIKE '%thank_you';

