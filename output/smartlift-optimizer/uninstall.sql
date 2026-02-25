-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smartlift_cache_enable', 'smartlift_webp_enable', 'smartlift_lazy_enable', 'smartlift_defer_js', 'smartlift_minify_html');

