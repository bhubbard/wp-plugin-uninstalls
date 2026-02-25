-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vivio_swift_configs');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

