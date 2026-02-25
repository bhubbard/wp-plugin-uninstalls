-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wc_pan_api_url', 'wc_pan_api_key', 'wc_pan_min_cart_total', 'wc_pan_custom_css', 'wc_pan_shortcode_name');

