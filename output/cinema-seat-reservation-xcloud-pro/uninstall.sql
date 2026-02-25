-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xcloud_cinema_option');
DELETE FROM wp_options WHERE option_name LIKE '%_option';

