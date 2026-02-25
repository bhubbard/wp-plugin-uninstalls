-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE '%new-window';
DELETE FROM wp_options WHERE option_name LIKE '%ribbon-position';
DELETE FROM wp_options WHERE option_name LIKE '%bottom-for-mobile';

