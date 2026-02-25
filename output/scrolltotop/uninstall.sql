-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('scrolltotop_plugin_settings', 'scrolltotop_dynamic_js', 'scrolltotop_dynamic_css');

