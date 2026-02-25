-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%base';
DELETE FROM wp_options WHERE option_name LIKE '%user';
DELETE FROM wp_options WHERE option_name LIKE '%password';

