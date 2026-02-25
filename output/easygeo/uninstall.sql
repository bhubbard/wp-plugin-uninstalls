-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easygeo_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('easygeo_location', 'easygeo_latitude', 'easygeo_longitude');
DELETE FROM wp_usermeta WHERE meta_key IN ('easygeo_location', 'easygeo_latitude', 'easygeo_longitude');
DELETE FROM wp_termmeta WHERE meta_key IN ('easygeo_location', 'easygeo_latitude', 'easygeo_longitude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('easygeo_location', 'easygeo_latitude', 'easygeo_longitude');

