-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('weevosdd_access_token', 'weevosdd_username');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tracking_info');
DELETE FROM wp_usermeta WHERE meta_key IN ('tracking_info');
DELETE FROM wp_termmeta WHERE meta_key IN ('tracking_info');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tracking_info');

