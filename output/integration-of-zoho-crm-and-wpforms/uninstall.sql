-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bitwpfzc_erase_all', 'bitwpfzc_db_version', 'bitwpfzc_installed', 'bitwpfzc_version', 'bitwpfzc_routes');

