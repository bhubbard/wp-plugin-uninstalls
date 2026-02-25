-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('minify_html_active', 'minify_javascript', 'minify_html_comments', 'minify_html_utf8', 'minify_html_xhtml', 'minify_html_relative', 'minify_html_scheme');

