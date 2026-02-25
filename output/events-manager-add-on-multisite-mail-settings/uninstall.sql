-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dbem_rsvp_mail_send_method', 'dbem_smtp_html', 'dbem_smtp_html_br', 'dbem_rsvp_mail_SMTPAuth');
DELETE FROM wp_options WHERE option_name LIKE '%name';
DELETE FROM wp_options WHERE option_name LIKE '%from';
DELETE FROM wp_options WHERE option_name LIKE '%host';
DELETE FROM wp_options WHERE option_name LIKE '%port';
DELETE FROM wp_options WHERE option_name LIKE '%user';
DELETE FROM wp_options WHERE option_name LIKE '%pass';

