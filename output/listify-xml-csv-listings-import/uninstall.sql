-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('theme_mods_listify', 'theme_mods_listify-child', 'listify_version', 'job_manager_google_maps_api_key');
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_notice_ignore';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('add_featured_img_to_gallery', '_gallery', '_gallery_images', 'geolocated');
DELETE FROM wp_usermeta WHERE meta_key IN ('add_featured_img_to_gallery', '_gallery', '_gallery_images', 'geolocated');
DELETE FROM wp_termmeta WHERE meta_key IN ('add_featured_img_to_gallery', '_gallery', '_gallery_images', 'geolocated');
DELETE FROM wp_commentmeta WHERE meta_key IN ('add_featured_img_to_gallery', '_gallery', '_gallery_images', 'geolocated');

