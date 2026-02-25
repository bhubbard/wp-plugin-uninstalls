-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('kif_mode', 'kif_cutoffdate', 'kif_cutoffdays');

