-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('koppel_je_boekhouding_importer_id', 'koppel_je_boekhouding_connection_status');

