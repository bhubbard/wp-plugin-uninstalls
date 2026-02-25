-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bitgfzc_erase_all', 'bitgfzc_db_version', 'bitgfzc_installed', 'bitgfzc_version', 'bitgfzc_routes');

