-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('spn_license_data', 'spn_plugin_version', 'spn_plugin_plugin_version', 'spn_license_health_check', 'spn_placeholder_image_id', 'spn_placeholder_registered', 'spn_settings');
DELETE FROM wp_options WHERE option_name LIKE 'spn_license_check_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_product_rating_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_product_reviews_%';
DELETE FROM wp_options WHERE option_name LIKE 'wc_product_total_rating_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rating', 'verified', '_wc_review_count', '_wc_rating_count', '_wc_average_rating');
DELETE FROM wp_usermeta WHERE meta_key IN ('rating', 'verified', '_wc_review_count', '_wc_rating_count', '_wc_average_rating');
DELETE FROM wp_termmeta WHERE meta_key IN ('rating', 'verified', '_wc_review_count', '_wc_rating_count', '_wc_average_rating');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rating', 'verified', '_wc_review_count', '_wc_rating_count', '_wc_average_rating');

