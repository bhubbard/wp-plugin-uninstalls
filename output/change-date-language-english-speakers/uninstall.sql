-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mesi_int', 'mesi_slug', 'giorni_int', 'giorni_slug');

