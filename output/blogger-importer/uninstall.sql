-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('blogger_importer', 'blogger_importer_connector');
DELETE FROM wp_options WHERE option_name LIKE 'blogger_importer_blog_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('blogger_blog', 'blogger_author', 'blogger_permalink', 'blogger_internal', 'geo_latitude', 'geo_longitude', 'geo_public', 'geo_address', 'blogger_largeimgispage');
DELETE FROM wp_usermeta WHERE meta_key IN ('blogger_blog', 'blogger_author', 'blogger_permalink', 'blogger_internal', 'geo_latitude', 'geo_longitude', 'geo_public', 'geo_address', 'blogger_largeimgispage');
DELETE FROM wp_termmeta WHERE meta_key IN ('blogger_blog', 'blogger_author', 'blogger_permalink', 'blogger_internal', 'geo_latitude', 'geo_longitude', 'geo_public', 'geo_address', 'blogger_largeimgispage');
DELETE FROM wp_commentmeta WHERE meta_key IN ('blogger_blog', 'blogger_author', 'blogger_permalink', 'blogger_internal', 'geo_latitude', 'geo_longitude', 'geo_public', 'geo_address', 'blogger_largeimgispage');

