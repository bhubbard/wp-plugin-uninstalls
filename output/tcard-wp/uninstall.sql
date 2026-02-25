-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tcards_table_db_version', 'tcard_skin_db_version');

