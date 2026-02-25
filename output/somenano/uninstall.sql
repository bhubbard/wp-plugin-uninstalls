-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('$somenano_db_version', '$somenano_version', 'somenano_options');

