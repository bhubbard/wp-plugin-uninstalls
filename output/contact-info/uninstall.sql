-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%_icon';
DELETE FROM wp_options WHERE option_name LIKE '%_default';

