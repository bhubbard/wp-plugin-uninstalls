-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('cache_images', 'cache_css', 'cache_js', 'cache_other');

