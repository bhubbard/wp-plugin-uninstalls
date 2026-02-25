-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('xyz_gal_thumb_height', 'xyz_gal_thumb_width', 'xyz_gal_img_height', 'xyz_gal_img_width', 'xyz_credit_link', 'xyz_gal_credit_dismiss', 'xyz_gal_page_limit', 'xyz_gal_gallery_height', 'xyz_gal_gallery_width', 'xyz_gal_wpgal_responsive', 'xyz_gal_slideshow', 'xyz_gal_slideshow_interval', 'xyz_gal_wp_gallery_override', 'xyz_cart_product_gallery', 'xyz_cls_gallery');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');

