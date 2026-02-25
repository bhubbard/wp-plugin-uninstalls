-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bvlt_auth', 'bvlt_token', 'bvlt_storeid');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bvlt_locations', 'bvlt_liked');
DELETE FROM wp_usermeta WHERE meta_key IN ('bvlt_locations', 'bvlt_liked');
DELETE FROM wp_termmeta WHERE meta_key IN ('bvlt_locations', 'bvlt_liked');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bvlt_locations', 'bvlt_liked');

