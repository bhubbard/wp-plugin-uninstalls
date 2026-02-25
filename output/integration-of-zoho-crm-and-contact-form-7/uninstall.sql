-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bitcf7zc_db_version', 'bitcf7zc_installed', 'bitcf7zc_version', 'bitcf7zc_erase_all', 'bitcf7zc_routes');

