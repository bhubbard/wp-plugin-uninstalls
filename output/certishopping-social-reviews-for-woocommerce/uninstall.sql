-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('certishopping_settings', 'woocommerce_enable_review_rating', 'native_star_ratings_enabled', 'wc_certishopping_just_installed', 'woocommerce_weight_unit');

