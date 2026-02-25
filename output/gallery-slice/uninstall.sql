-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gallery_slice_link2full', 'gallery_slice_waiting_img', 'gallery_slice_threshold', 'gallery_slice_downto', 'gallery_slice_version', 'wp_minify', 'bwp_minify_general');
DELETE FROM wp_options WHERE option_name LIKE 'gallery_slice_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_gallery_noslice', '_gallery_link2full', '_gallery_downto');
DELETE FROM wp_usermeta WHERE meta_key IN ('_gallery_noslice', '_gallery_link2full', '_gallery_downto');
DELETE FROM wp_termmeta WHERE meta_key IN ('_gallery_noslice', '_gallery_link2full', '_gallery_downto');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_gallery_noslice', '_gallery_link2full', '_gallery_downto');

