-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pcr_option_1');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', 'pcr_photographer_name', 'pcr_photographer_platform');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', 'pcr_photographer_name', 'pcr_photographer_platform');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', 'pcr_photographer_name', 'pcr_photographer_platform');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', 'pcr_photographer_name', 'pcr_photographer_platform');

