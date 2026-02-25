-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('npen_label_text');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_metatest_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('_metatest_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('_metatest_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_metatest_data');

