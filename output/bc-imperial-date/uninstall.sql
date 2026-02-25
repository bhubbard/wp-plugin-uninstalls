-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%check_number';
DELETE FROM wp_options WHERE option_name LIKE '%use_dot';

