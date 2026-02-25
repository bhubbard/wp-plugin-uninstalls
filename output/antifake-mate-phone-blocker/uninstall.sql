-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afnk_blocked_phone_numbers', 'afnk_blocked_phone_attempts');

