-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('epicwin_email_from', 'epicwin_email_subject', 'epicwin_email_message');

