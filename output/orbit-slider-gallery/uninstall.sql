-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('orbit_slider_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_orbit_gallery_images', '_orbit_slider_meta');
DELETE FROM wp_usermeta WHERE meta_key IN ('_orbit_gallery_images', '_orbit_slider_meta');
DELETE FROM wp_termmeta WHERE meta_key IN ('_orbit_gallery_images', '_orbit_slider_meta');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_orbit_gallery_images', '_orbit_slider_meta');

