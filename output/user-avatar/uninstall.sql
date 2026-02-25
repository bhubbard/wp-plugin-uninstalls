-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fileupload_maxk');
DELETE FROM wp_options WHERE option_name LIKE 'avatar_file_%';

