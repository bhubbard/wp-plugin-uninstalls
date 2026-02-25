-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ig_profile', 'ig_gallery_counter_show', 'ig_gallery_columns', 'ig_profile_updated');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ig_photos_ids', 'ig_followers', 'ig_shortcode', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('ig_photos_ids', 'ig_followers', 'ig_shortcode', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('ig_photos_ids', 'ig_followers', 'ig_shortcode', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ig_photos_ids', 'ig_followers', 'ig_shortcode', '_wp_attachment_image_alt');

