-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('allegro_sync_db_version', 'e_strix_allegro_symc_db_version');

