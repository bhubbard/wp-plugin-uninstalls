-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fhw_dsgvo_kommentar_time_removement', 'fhw_dsgvo_kommentar_removement_time');

