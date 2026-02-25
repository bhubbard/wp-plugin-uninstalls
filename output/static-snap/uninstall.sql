-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('static_snap_last_processed_file');
DELETE FROM wp_options WHERE option_name LIKE '%_cli_process_lock';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data');

