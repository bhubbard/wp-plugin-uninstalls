-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('page_optimize-js', 'page_optimize-load-mode', 'page_optimize-js-exclude', 'page_optimize-css', 'page_optimize-css-exclude');

