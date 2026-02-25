-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lcso_cache_times', 'lcso_enable', 'lcso_not_for_html', 'lcso_queued_scripts', 'lcso_queued_styles', 'lcso_js_filter', 'lcso_css_filter', 'lcso_js_ignore', 'lcso_css_ignore', 'lcso_inl_js_ignore', 'lcso_tweak_htaccess');
DELETE FROM wp_options WHERE option_name LIKE 'lcso_ignored_%';
DELETE FROM wp_options WHERE option_name LIKE '%_ignore';
DELETE FROM wp_options WHERE option_name LIKE '%_filter';
DELETE FROM wp_options WHERE option_name LIKE '%_type';

