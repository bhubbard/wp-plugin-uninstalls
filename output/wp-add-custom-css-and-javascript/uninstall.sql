-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('d3_custom_javascript_ver', 'd3_custom_css_ver');
DELETE FROM wp_options WHERE option_name LIKE '%_minify';
DELETE FROM wp_options WHERE option_name LIKE '%_ver';

