-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bytes_route_js_code', 'bytes_route_js_code_backend', 'bytes_route_js_code_wplogin');

