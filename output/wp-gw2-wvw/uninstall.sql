-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gw2_worlds');
DELETE FROM wp_options WHERE option_name LIKE 'gw2_wvw_%';

