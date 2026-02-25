-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ngg_options', 'wpimageflow2_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wpif2-image-link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wpif2-image-link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wpif2-image-link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wpif2-image-link');

