-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('themeworm_slug');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('plexx_gallery_slider', 'plexx_featured_gallery');
DELETE FROM wp_usermeta WHERE meta_key IN ('plexx_gallery_slider', 'plexx_featured_gallery');
DELETE FROM wp_termmeta WHERE meta_key IN ('plexx_gallery_slider', 'plexx_featured_gallery');
DELETE FROM wp_commentmeta WHERE meta_key IN ('plexx_gallery_slider', 'plexx_featured_gallery');

