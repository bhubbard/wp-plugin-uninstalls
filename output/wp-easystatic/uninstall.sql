-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('static_minify_css', 'static_critical_enable', 'static_exclude_css', 'static_critical_css', 'static_minify_js', 'static_exclude_js', 'static_minify_html', 'wp_static_page', 'static_directory', 'wp_static_version', 'static_page_field', 'static_exclude_url');

