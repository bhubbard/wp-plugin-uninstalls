-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('megaforms_db_version', 'megaforms_uninstall');
DELETE FROM wp_options WHERE option_name LIKE 'megaforms_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';
DELETE FROM wp_options WHERE option_name LIKE 'wp_megaforms_%';

