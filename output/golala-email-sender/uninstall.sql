-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('golala_email_sender_options', 'golala_email_sender_activated');

