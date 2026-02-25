-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dyshorts_settings');
DELETE FROM wp_options WHERE option_name LIKE 'dyshorts_data_%';

