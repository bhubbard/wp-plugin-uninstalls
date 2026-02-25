-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ttscj_enable_on_posts', 'ttscj_enable_on_pages');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_ttscj_css_url', '_ttscj_js_url', '_ttscj_header_code');
DELETE FROM wp_usermeta WHERE meta_key IN ('_ttscj_css_url', '_ttscj_js_url', '_ttscj_header_code');
DELETE FROM wp_termmeta WHERE meta_key IN ('_ttscj_css_url', '_ttscj_js_url', '_ttscj_header_code');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_ttscj_css_url', '_ttscj_js_url', '_ttscj_header_code');

