-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gcpta-settings');
DELETE FROM wp_options WHERE option_name LIKE 'gcpta-settings-%';

