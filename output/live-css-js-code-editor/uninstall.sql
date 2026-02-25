-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('live_code_css_field', 'live_code_js_field', 'live_code_header_field', 'live_code_footer_field', 'live_code_admin_css_field', 'live_code_admin_js_field');

