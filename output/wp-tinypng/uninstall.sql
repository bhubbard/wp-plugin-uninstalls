-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_tinypng_duplicate', 'wp_tinypng_debug', 'wp_tinypng_children', 'wp_tinypng_api');

