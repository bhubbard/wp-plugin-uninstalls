-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spamwobl_blocked_words');
DELETE FROM wp_options WHERE option_name LIKE 'spamwobl_blocked_%';

