-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('el_gallery_mobile_detect', 'el_gallery_time', 'el_gallery_width', 'el_gallery_height', 'el_gallery_nav', 'el_gallery_nav_color', 'el_gallery_nav_light', 'el_gallery_center', 'el_gallery_icon', 'el_gallery_links');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

