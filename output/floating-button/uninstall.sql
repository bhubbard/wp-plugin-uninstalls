-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name LIKE 'wow_license_key_%';
DELETE FROM wp_options WHERE option_name LIKE '%_db_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wowp_likes');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wowp_likes');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wowp_likes');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wowp_likes');

