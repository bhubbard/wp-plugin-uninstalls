-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tag_myxboxprofile', 'gis_myxboxprofile', 'srg_myxboxprofile', 'hidejs_myxboxprofile');

