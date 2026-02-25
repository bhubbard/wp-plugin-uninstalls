-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('TrueMail Api Key', 'option_name', 'truemail_email_validator');

