-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_manage_stock', 'active_sitewide_plugins');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('order', 'thumbnail_id', '_wp_attachment_image_alt', 'woo_variation_gallery_images', '_wc_attachment_source', 'is_customer_note');
DELETE FROM wp_usermeta WHERE meta_key IN ('order', 'thumbnail_id', '_wp_attachment_image_alt', 'woo_variation_gallery_images', '_wc_attachment_source', 'is_customer_note');
DELETE FROM wp_termmeta WHERE meta_key IN ('order', 'thumbnail_id', '_wp_attachment_image_alt', 'woo_variation_gallery_images', '_wc_attachment_source', 'is_customer_note');
DELETE FROM wp_commentmeta WHERE meta_key IN ('order', 'thumbnail_id', '_wp_attachment_image_alt', 'woo_variation_gallery_images', '_wc_attachment_source', 'is_customer_note');

