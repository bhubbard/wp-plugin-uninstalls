-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_donated';
DELETE FROM wp_options WHERE option_name LIKE '%_donated_width';

