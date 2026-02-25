-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('red_glossaryOnlySingle', 'red_glossaryOnPages', 'red_glossaryID');

