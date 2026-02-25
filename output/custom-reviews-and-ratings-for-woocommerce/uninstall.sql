-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mw_custom_ratings_reviews_woocommerce_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', '_wc_rating_count', '_wc_average_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', '_wc_rating_count', '_wc_average_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', '_wc_rating_count', '_wc_average_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', '_wc_rating_count', '_wc_average_rating');

