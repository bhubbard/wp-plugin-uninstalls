-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_key';
DELETE FROM wp_options WHERE option_name LIKE '%_general';
DELETE FROM wp_options WHERE option_name LIKE '%_turn';

