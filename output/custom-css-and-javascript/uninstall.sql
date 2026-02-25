-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hm_custom_javascript_ver', 'hm_custom_css_ver', 'hm_custom_css_js_rd_notice_hidden', 'hm_custom_css_js_first_activate', 'hm_custom_javascript_minify', 'hm_custom_css_minify');
DELETE FROM wp_options WHERE option_name LIKE '%_minify';
DELETE FROM wp_options WHERE option_name LIKE '%_ver';
DELETE FROM wp_options WHERE option_name LIKE '%_first_activate';
DELETE FROM wp_options WHERE option_name LIKE '%_rd_notice_hidden';

