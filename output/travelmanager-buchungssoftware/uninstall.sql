-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tm_colors');
DELETE FROM wp_options WHERE option_name LIKE 'basket_%';

