-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mi_registered_css_styles', 'mi_registered_js_scripts', 'mi_registered_css_handles', 'mi_registered_js_handles');

