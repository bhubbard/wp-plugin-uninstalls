-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Kfactor', 'freepicsmashshared', 'picsmash_db_version', 'picsmash_version', 'picsmash_activation', 'MediaC', 'NextG', 'ShowScore');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'wins', 'losses', '_wp_attached_file', 'img_full', 'mediaID', 'picsmash', 'gallery', 'picshare');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'wins', 'losses', '_wp_attached_file', 'img_full', 'mediaID', 'picsmash', 'gallery', 'picshare');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'wins', 'losses', '_wp_attached_file', 'img_full', 'mediaID', 'picsmash', 'gallery', 'picshare');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'wins', 'losses', '_wp_attached_file', 'img_full', 'mediaID', 'picsmash', 'gallery', 'picshare');

