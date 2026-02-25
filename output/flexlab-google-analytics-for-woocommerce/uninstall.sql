-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_google_analytics__api_secret', 'woocommerce_google_analytics__measurement_id', 'woocommerce_google_analytics__use_google_tag');

