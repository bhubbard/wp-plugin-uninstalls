-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_temp', 'send_mail_after', 'send_mail_count', 'send_mail_interval');

