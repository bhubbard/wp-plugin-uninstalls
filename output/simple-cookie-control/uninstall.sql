-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('analytics_simple_cookie_control', 'customizer_simple_cookie_control');

