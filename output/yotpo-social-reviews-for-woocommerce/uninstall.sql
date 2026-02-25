-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('yotpo_settings', 'wc_yotpo_just_installed', 'woocommerce_enable_review_rating', 'native_star_ratings_enabled');

