-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('skolmaten_texten', 'skolmaten_adresses', 'snillrik_skolmaten_data');

