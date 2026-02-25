-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('optimize_minify_html', 'optimize_minify_css', 'optimize_minify_js');

