-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vinvin_seo', 'vinvin_accepted_posttypes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vinvin_id_post', 'hasbeenreviewed', 'reviews', 'product_value', 'ratingCount', 'reviewCount', 'rating', 'product_random_image', 'is_thumbnail_img');
DELETE FROM wp_usermeta WHERE meta_key IN ('vinvin_id_post', 'hasbeenreviewed', 'reviews', 'product_value', 'ratingCount', 'reviewCount', 'rating', 'product_random_image', 'is_thumbnail_img');
DELETE FROM wp_termmeta WHERE meta_key IN ('vinvin_id_post', 'hasbeenreviewed', 'reviews', 'product_value', 'ratingCount', 'reviewCount', 'rating', 'product_random_image', 'is_thumbnail_img');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vinvin_id_post', 'hasbeenreviewed', 'reviews', 'product_value', 'ratingCount', 'reviewCount', 'rating', 'product_random_image', 'is_thumbnail_img');

