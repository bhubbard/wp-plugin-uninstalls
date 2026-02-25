-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('http2_push_general_list', 'http2_async_js_list', 'http2_async_css_list', 'push_all_style', 'push_all_script');

