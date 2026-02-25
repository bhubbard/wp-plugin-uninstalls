-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('recapture_custom_recapture_host', 'recapture_custom_loader_url', 'recapture_api_key', 'recapture_authenticator_token', 'recapture_discount_code');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_recapture_cart_id', 'edd_rating', 'edd_review_title', 'edd_review_approved', 'edd_reviews_average_rating', 'recapture_missing_plugin_nag');
DELETE FROM wp_usermeta WHERE meta_key IN ('_recapture_cart_id', 'edd_rating', 'edd_review_title', 'edd_review_approved', 'edd_reviews_average_rating', 'recapture_missing_plugin_nag');
DELETE FROM wp_termmeta WHERE meta_key IN ('_recapture_cart_id', 'edd_rating', 'edd_review_title', 'edd_review_approved', 'edd_reviews_average_rating', 'recapture_missing_plugin_nag');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_recapture_cart_id', 'edd_rating', 'edd_review_title', 'edd_review_approved', 'edd_reviews_average_rating', 'recapture_missing_plugin_nag');

