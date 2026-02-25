-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%usernames';
DELETE FROM wp_options WHERE option_name LIKE '%count';
DELETE FROM wp_options WHERE option_name LIKE '%convert';

