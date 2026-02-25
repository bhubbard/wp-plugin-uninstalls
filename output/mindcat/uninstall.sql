-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('MindCatColors', 'mindcat_image_noimage', 'mindcat_image_primary', 'mindcat_image_secondary');
DELETE FROM wp_options WHERE option_name LIKE 'mindcat_image_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mindcat_image_primary', 'mindcat_image_secondary');
DELETE FROM wp_usermeta WHERE meta_key IN ('mindcat_image_primary', 'mindcat_image_secondary');
DELETE FROM wp_termmeta WHERE meta_key IN ('mindcat_image_primary', 'mindcat_image_secondary');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mindcat_image_primary', 'mindcat_image_secondary');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'mindcat_image_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'mindcat_image_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'mindcat_image_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mindcat_image_%';

