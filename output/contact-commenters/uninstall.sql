-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ContactCommentersInitialized', 'mail-sender', 'mail-sender-email', 'mail-subject', 'mail-ind', 'mail-content');

