-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dig_description_home_description');
DELETE FROM wp_options WHERE option_name LIKE '%_archive_description';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dig_description_meta_description');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dig_description_meta_description');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dig_description_meta_description');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dig_description_meta_description');

