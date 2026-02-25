-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_weight_unit', 'yay-swatches-collection-customize-settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wc_average_rating', '_wc_review_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wc_average_rating', '_wc_review_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wc_average_rating', '_wc_review_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', '_wc_average_rating', '_wc_review_count');

