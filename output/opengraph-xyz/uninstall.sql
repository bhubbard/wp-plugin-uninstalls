-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('opengraph_xyz_api_key', 'opengraph_xyz_error');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('opengraph-xyz');
DELETE FROM wp_usermeta WHERE meta_key IN ('opengraph-xyz');
DELETE FROM wp_termmeta WHERE meta_key IN ('opengraph-xyz');
DELETE FROM wp_commentmeta WHERE meta_key IN ('opengraph-xyz');

