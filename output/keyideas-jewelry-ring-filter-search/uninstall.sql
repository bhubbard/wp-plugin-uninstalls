-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_attribute_taxonomies', 'krfs_review_notice_dismissed_at', 'wc_attribute_taxonomies', 'krfs_deactivation_message');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('woo_variation_gallery_images', '_ki_video_360');
DELETE FROM wp_usermeta WHERE meta_key IN ('woo_variation_gallery_images', '_ki_video_360');
DELETE FROM wp_termmeta WHERE meta_key IN ('woo_variation_gallery_images', '_ki_video_360');
DELETE FROM wp_commentmeta WHERE meta_key IN ('woo_variation_gallery_images', '_ki_video_360');

