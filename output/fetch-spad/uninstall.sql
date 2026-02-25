-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fetch_spad_layout', 'fetch_spad_language', 'fetch_spad_timezone');
DELETE FROM wp_options WHERE option_name LIKE 'fetch_spad_%';

