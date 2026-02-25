-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('last_boat_import', 'last_boat_import_page', 'last_basement_import', 'last_basement_import_page', 'connect_options', 'connect_options_tools');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('com5anker_mm', 'com5anker_id', 'com5anker_region', 'com5anker_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('com5anker_mm', 'com5anker_id', 'com5anker_region', 'com5anker_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('com5anker_mm', 'com5anker_id', 'com5anker_region', 'com5anker_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('com5anker_mm', 'com5anker_id', 'com5anker_region', 'com5anker_data');

