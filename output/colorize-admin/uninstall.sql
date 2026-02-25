-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_colorthemeadmin', '_colorthemeadmintop', '_colorthemeadminmain', '_colorthemeadminwptop');

