-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('media_selector_attachment_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('featured_image_id', '_thumbnail_id', 'categoryfeaturedimage_exclude');
DELETE FROM wp_usermeta WHERE meta_key IN ('featured_image_id', '_thumbnail_id', 'categoryfeaturedimage_exclude');
DELETE FROM wp_termmeta WHERE meta_key IN ('featured_image_id', '_thumbnail_id', 'categoryfeaturedimage_exclude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('featured_image_id', '_thumbnail_id', 'categoryfeaturedimage_exclude');

