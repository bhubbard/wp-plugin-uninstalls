-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nimbata_dni_id', 'nimbata_dni_sri');

