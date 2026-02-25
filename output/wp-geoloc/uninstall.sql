-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('google_api_key', 'sc_gds_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('autocomplete', 'latitude', 'longitude', 'wpgeoloc_coords');
DELETE FROM wp_usermeta WHERE meta_key IN ('autocomplete', 'latitude', 'longitude', 'wpgeoloc_coords');
DELETE FROM wp_termmeta WHERE meta_key IN ('autocomplete', 'latitude', 'longitude', 'wpgeoloc_coords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('autocomplete', 'latitude', 'longitude', 'wpgeoloc_coords');

